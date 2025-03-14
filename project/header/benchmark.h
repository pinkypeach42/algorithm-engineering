#ifndef BENCHMARK_H
#define BENCHMARK_H

#include <string>
#include <vector>

/**
 * Template-basierte Benchmark-Funktion
 *
 * Da unsere FUnktionen unterschiedliche Parameteranzahlen unbd Typen haben,
 * benutzen wir Template basierte Benchmark funktion, damit jede Funktion akzeptiert wird
 * die unsigned char* zurückgibt.
 * So können wir jede Funktion benchmarken, ohne ihre Signatur zu ändern
 * Für die Übergabe der Parametern ist dann Lambda zuständig
*/
template<typename F>
double runBenchmark(const std::string& name, F func, unsigned char* input, int width, int height, int threads) {
    omp_set_num_threads(threads);
    double start = omp_get_wtime();
    unsigned char* result = func(input, width, height);
    double end = omp_get_wtime();
    delete[] result;
    return end - start;
}

std::vector<int> getThreadCounts();
void runBenchmarks(unsigned char* input, int width, int height);

#endif 