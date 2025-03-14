#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>
#include <complex>
#include "libraries/stb_image.h"
#include "libraries/stb_image_write.h"
using namespace std;
/**
 * Lädt ein Bild aus dem angegebenen Pfad.
 *
 * @param path Der Pfad zum Bild.
 * @param width Die Breite des Bildes (wird vom Funktion gesetzt).
 * @param height Die Höhe des Bildes (wird vom Funktion gesetzt).
 * @param channels Die Anzahl der Farbkanäle im Bild (wird vom Funktion gesetzt).
 * @return Ein Zeiger auf die Bilddaten oder nullptr, falls das Laden fehlschlägt.
 */
unsigned char* loadImage(const string& path, int& width, int& height, int& channels) {
    unsigned char* image = stbi_load(path.c_str(), &width, &height, &channels, 1);
    if (!image) {
       cerr << "Fehler!!! Bild konnte nicht geladen werden " << endl;
        return nullptr;
    }
    cout << "Bild geladen: " << path << " (" << width << "x" << height << ")\n";
    return image;
}

/**
 * Speichert ein Bild im PNG-Format.
 *
 * @param path Der Pfad, unter dem das Bild gespeichert werden soll.
 * @param data Die Bilddaten.
 * @param width Die Breite des Bildes.
 * @param height Die Höhe des Bildes.
 * @return true, wenn das Bild erfolgreich gespeichert wurde, sonst false.
 */
bool saveImage(const string& path, unsigned char* data, int width, int height) {
    if (!stbi_write_png(path.c_str(), width, height, 1, data, width)) {
        cerr << "Fehler beim Speichern  " << path << endl;
        return false;
    }
   cout << "Bild wurde erfolgreich gespeicher: " << path << " (" << width << "x" << height << ")\n";
    return true;
}

/**
 * Entfernt Schatten aus einem Bild basierend auf einem Hintergrundbild.
 *
 * @param input Die Eingabebilddaten.
 * @param background Die Hintergrundbilddaten.
 * @param width Die Breite des Bildes.
 * @param height Die Höhe des Bildes.
 * @return Ein Zeiger auf die schattenfreien Bilddaten.
 */
unsigned char* removeShadows(unsigned char* input, unsigned char* background, int width, int height) {
    unsigned char* output = new unsigned char[width * height];

#pragma omp parallel for
    for (int i = 0; i < width * height; i++) {
        float normalized = static_cast<float>(input[i]) / (background[i] + 1) * 255;  // +1 um Division durch 0 zu vermeiden
        output[i] = static_cast<unsigned char>(min(255.0f,max(0.0f, normalized)));
    }

    return output;
}

/**
 * Wendet eine Gammakorrektur auf ein Bild an.
 *
 * @param shadowFree Die schattenfreien Bilddaten.
 * @param width Die Breite des Bildes.
 * @param height Die Höhe des Bildes.
 * @param gamma Der Gammawert für die Korrektur.
 * @return Ein Zeiger auf die gammakorrigierten Bilddaten.
 */
unsigned char* gammaCorrection(unsigned char* shadowFree, int width, int height, float gamma) {
    unsigned char* output = new unsigned char[width * height];

#pragma omp parallel for
    for (int i = 0; i < width * height; i++) {
        float pixel = static_cast<float>(shadowFree[i]) / 255.0f;
        float corrected = pow(pixel, gamma) * 255.0f;
        output[i] = static_cast<unsigned char>(min(255.0f, max(0.0f, corrected)));
    }

    return output;
}

/**
 * Wendet einen Gaußschen Weichzeichner auf ein Bild an.
 *
 * @param input Die Eingabebilddaten.
 * @param width Die Breite des Bildes.
 * @param height Die Höhe des Bildes.
 * @param kernelSize Die Größe des Gaußschen Kernels.
 * @return Ein Zeiger auf die weichgezeichneten Bilddaten.
 */
unsigned char* gaussianBlur(const unsigned char* input, int width, int height, int kernelSize) {
    unsigned char* output = new unsigned char[width * height]();
    unsigned char* temp = new unsigned char[width * height]();

   vector<float> kernel(kernelSize);
    float sigma = kernelSize / 2.0f;
    float sum = 0.0f;

    for (int i = 0; i < kernelSize; i++) {
        int x = i - kernelSize / 2;
        kernel[i] = exp(-(x * x) / (2 * sigma * sigma));
        sum += kernel[i];
    }

    // normalisieren
    for (int i = 0; i < kernelSize; i++) {
        kernel[i] /= sum;
    }

    int halfKernel = kernelSize / 2;

    // Horizontaler 
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        #pragma omp simd
        for (int x = 0; x < width; x++) {
            float summe = 0;
            for (int i = -halfKernel; i <= halfKernel; i++) {
                int sampleX = max(0, min(width - 1, x + i));  
                summe += input[y * width + sampleX] * kernel[i + halfKernel];
            }
            temp[y * width + x] = static_cast<unsigned char>(summe + 0.5f);
        }
    }

    // Vertikaler 
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        #pragma omp simd
        for (int x = 0; x < width; x++) {
            float summe = 0;
            for (int j = -halfKernel; j <= halfKernel; j++) {
                int sampleY = max(0, min(height - 1, y + j)); 
                summe += temp[sampleY * width + x] * kernel[j + halfKernel];
            }
            output[y * width + x] = static_cast<unsigned char>(summe + 0.5f);
        }
    }

    delete[] temp;
    return output;
}

/**
 * Entfernt Rauschen aus einem Bild basierend auf dem lokalen Kontrast.
 *
 * @param input Die Eingabebilddaten.
 * @param width Die Breite des Bildes.
 * @param height Die Höhe des Bildes.
 * @param windowSize Die Größe des Fensters für die lokale Kontrastberechnung.
 * @param contrastThreshold Der Schwellenwert für den Kontrast.
 * @return Ein Zeiger auf die entrauschten Bilddaten.
 */
unsigned char* contrastBasedDenoise(const unsigned char* input, int width, int height, int windowSize, float contrastThreshold) {
    unsigned char* output = new unsigned char[width * height]();
    int halfWindow = windowSize / 2;

#pragma omp parallel for collapse(2)
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            float sum = 0.0f;
            float sumSquared = 0.0f;
            int count = 0;

            for (int j = -halfWindow; j <= halfWindow; j++) {
                for (int i = -halfWindow; i <= halfWindow; i++) {
                    int sampleY = max(0, min(height - 1, y + j));
                    int sampleX = max(0, min(width - 1, x + i));
                    float value = input[sampleY * width + sampleX];
                    sum += value;
                    sumSquared += value * value;
                    count++;
                }
            }

            float mean = sum / count;
            float variance = (sumSquared / count) - (mean * mean);
            float stddev = sqrt(max(0.0f, variance));

            int index = y * width + x;
            if (stddev < contrastThreshold) {

                output[index] = 255;
            }
            else {
                output[index] = input[index];
            }
        }
    }

    return output;
}

/**
 * Entfernt den Hintergrund aus einem Bild basierend auf einem lokalen Schwellenwert.
 *
 * @param input Die Eingabebilddaten.
 * @param width Die Breite des Bildes.
 * @param height Die Höhe des Bildes.
 * @param blockSize Die Größe des Blocks für die lokale Schwellenwertberechnung.
 * @param constant Ein konstanter Wert, der vom lokalen Durchschnitt abgezogen wird.
 * @return Ein Zeiger auf die Bilddaten ohne Hintergrund.
 */
unsigned char* backgroundRemoval(const unsigned char* input, int width, int height, int blockSize, int constant) {
    unsigned char* output = new unsigned char[width * height]();
    if (blockSize % 2 == 0) {
        blockSize += 1;
    }
    int halfBlockSize = blockSize / 2;

#pragma omp parallel for
    for (int y = halfBlockSize; y < height - halfBlockSize; y++) {
        for (int x = halfBlockSize; x < width - halfBlockSize; x++) {
            int summe, count = 0;
            for (int dy = -halfBlockSize; dy <= halfBlockSize; dy++) {
                for (int dx = -halfBlockSize; dx <= halfBlockSize; dx++) {
                    int nx = x + dx;
                    int ny = y + dy;
                    if (nx >= 0 && nx < width && ny >= 0 && ny < height) {
                        summe += input[ny * width + nx];
                        count++;
                    }
                }
            }

            int average = summe / count;
            if (input[y * width + x] < average - constant) {
                output[y * width + x] = 0; 
            }
            else {
                output[y * width + x] = 255;  
            }
        }
    }

    return output;
}