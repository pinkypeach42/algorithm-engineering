#include <iostream>
#include <iomanip>
#include <vector>
#include <omp.h>
#include "enhancer.h"
#include "benchmark.h"
using namespace std;

// für Speedup Tabelle
struct BenchmarkResult {
    string name;
    int threads;
    double time;
};

// Hier wird ein dynamische Thread-Liste erstellen abhängig von der Architektur auf der getestet wird
vector<int> getThreadCounts() {
    int maxThreads = omp_get_max_threads();
    cout << "Maximale Thread-Anzahl: " << maxThreads << endl;
    vector<int> threads = { 1 };
    for (int t = 2; t <= maxThreads; t *= 2) { // Potenzen von 2
        threads.push_back(t);
    }
    if (threads.back() < maxThreads) {
        threads.push_back(maxThreads);
    }
    return threads;
}

// Benchmark-Modus
// @param input: Eingabebild
// @param width: Breite des Bildes
// @param height: Höhe des Bildes
void runBenchmarks(unsigned char* input, int width, int height) {
    vector<int> threads = getThreadCounts();
    vector<BenchmarkResult> results;

    for (int t : threads) {
        cout << "Benchmark mit " << t << " Threads" << endl;
        // GaussianBlur
        double timeGaussian = runBenchmark("GaussianBlur",
            [kernelSize = 11](unsigned char* in, int w, int h) { return gaussianBlur(in, w, h, kernelSize); },
            input, width, height, t);
        results.push_back({ "GaussianBlur", t, timeGaussian });
        unsigned char* background = gaussianBlur(input, width, height, 11);

        // RemoveShadows
        double timeRemoveShadows = runBenchmark("RemoveShadows",
            [background](unsigned char* in, int w, int h) { return removeShadows(in, background, w, h); },
            input, width, height, t);
        results.push_back({ "RemoveShadows", t, timeRemoveShadows });
        unsigned char* shadowFree = removeShadows(input, background, width, height);

        // GammaCorrection
        double timeGamma = runBenchmark("GammaCorrection",
            [gamma = 5.0f](unsigned char* in, int w, int h) { return gammaCorrection(in, w, h, gamma); },
            shadowFree, width, height, t);
        results.push_back({ "GammaCorrection", t, timeGamma });
        unsigned char* gammaCorrected = gammaCorrection(shadowFree, width, height, 5.0f);

        // ContrastBasedDenoise
        double timeDenoise = runBenchmark("ContrastBasedDenoise",
            [windowSize = 3, contrastThreshold = 30.0f](unsigned char* in, int w, int h) {
                return contrastBasedDenoise(in, w, h, windowSize, contrastThreshold);
            },
            gammaCorrected, width, height, t);
        results.push_back({ "ContrastBasedDenoise", t, timeDenoise });

        delete[] background;
        delete[] shadowFree;
        delete[] gammaCorrected;
    }

    // Speedup-Tabelle wird ausgegeben
    cout << "\n--- Benchmark-Ergebnisse ---" << endl;
    cout << left << setw(20) << "Funktion"
        << setw(10) << "Threads"
        << setw(12) << "Zeit (s)"
        << setw(10) << "Speedup" << endl;
    cout << string(52, '-') << endl;

    vector<string> functions = { "GaussianBlur", "RemoveShadows", "GammaCorrection", "ContrastBasedDenoise" };
    for (size_t i = 0; i < functions.size(); ++i) {
        const auto& func = functions[i];
        double baseTime = 0.0;
        for (const auto& result : results) {
            if (result.name == func && result.threads == 1) {
                baseTime = result.time; // 1 Thread
                break;
            }
        }
        if (baseTime == 0.0) continue; // Sicherheits check

        for (const auto& result : results) {
            if (result.name == func) {
                double speedup = baseTime / result.time;
                cout << left << setw(20) << result.name
                    << setw(10) << result.threads
                    << fixed << setprecision(4) << setw(12) << result.time
                    << setprecision(2) << setw(10) << speedup << endl;
            }
        }
        // für die bessere Lesbarkeit wird eine Trennlinie hinzugefügt
        if (i < functions.size() - 1) {
            cout << string(52, '-') << endl;
        }
    }
}