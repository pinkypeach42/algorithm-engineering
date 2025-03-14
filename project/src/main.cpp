#include <iostream>
#include "enhancer.h"
#include "utils.h"
#include "cli.h"
#include <string>
#include <omp.h>
#include <iostream>
#include "libraries/stb_image.h"
#include "libraries/stb_image_write.h"
#include "benchmark.h"
using namespace std;

int main(int argc, char** argv) {

    double start_time, end_time;
    start_time = omp_get_wtime();
    CLIArgs args = parseArguments(argc, argv);

    string outputDir = "output";
    if (!createOutputDirectory(outputDir)) {
        return 1;
    }

    int width, height, channels;
    unsigned char* input = loadImage(args.inputPath, width, height, channels);
    if (!input) {
        return 1;
    }

    end_time = omp_get_wtime();
    cout << "img Zeit laden in sekunden " << end_time - start_time << endl;

    if (args.benchmarkMode) {
        cout << "--- Benchmark-Modus aktiviert ---" << endl;
        runBenchmarks(input, width, height);
        cout << "Verarbeitung wurde abgeschlossen" << endl;

    }
    else {
        // If the -G flag is present, perform background removal
        if (args.backgroundRemove) {
            start_time = omp_get_wtime();
            unsigned char* backgroundRemoved = backgroundRemoval(input, width, height, 30, 10);
            end_time = omp_get_wtime();
            cout << "Background Removal time: " << end_time - start_time << " seconds" << endl;

            // Save the image after background removal
            if (!saveImage(args.outputPath, backgroundRemoved, width, height)) {
                std::cerr << "Fehler beim speichern " << args.outputPath << endl;
                return false;
            }
            stbi_image_free(input);
            delete[] backgroundRemoved;
            cout << "Background removal completed and image saved: " << args.outputPath << endl;

        }
        else {
            // Process image normally if -G flag is not set

            // Step 1: Gaussian Blur
            start_time = omp_get_wtime();
            unsigned char* blur = gaussianBlur(input, width, height, 11);
            end_time = omp_get_wtime();
            cout << "GaussianBlur dauerte " << end_time - start_time << " sekunden" << endl;

            // Step 2: Remove Shadows
            start_time = omp_get_wtime();
            unsigned char* shadowFree = removeShadows(input, blur, width, height);
            end_time = omp_get_wtime();
            cout << "RemoveShadows dauerte " << end_time - start_time << " sekunden" << endl;

            // Step 3: Gamma Correction
            start_time = omp_get_wtime();
            unsigned char* gammaCorrected = gammaCorrection(shadowFree, width, height, 5.0f);
            end_time = omp_get_wtime();
            cout << "GammaCorrection dauerte " << end_time - start_time << " sekunden" << endl;

            // Step 4: Denoising
            start_time = omp_get_wtime();
            unsigned char* denoised = contrastBasedDenoise(gammaCorrected, width, height, 5, 30.0f);
            end_time = omp_get_wtime();
            cout << "contrastBasedDenoise dauerte " << end_time - start_time << " sekunden" << endl;

            // Save the processed image
            if (!saveImage(args.outputPath, denoised, width, height)) {
                cerr << "Fehler beim speichern " << args.outputPath << endl;
                return false;
            }

            // Clean up
            stbi_image_free(input);
            delete[] blur;
            delete[] shadowFree;
            delete[] gammaCorrected;
            delete[] denoised;

            cout << "Verarbeitung abgeschlossen! Das Bild wurde gespeichert " << args.outputPath << endl;
        }
    }

    return 0;
}
