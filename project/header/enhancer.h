#ifndef ENHANCER_H
#define ENHANCER_H
#include <functional> 
#include <vector>
#include <string>

// Funktionen zur Bildverarbeitung
unsigned char* loadImage(const std::string& path, int& width, int& height, int& channels);
bool saveImage(const std::string& path, unsigned char* data, int width, int height);
unsigned char* contrastBasedDenoise(const unsigned char* input, int width, int height, int windowSize, float contrastThreshold);
unsigned char* gammaCorrection(unsigned char* shadowFree, int width, int height, float gamma);
unsigned char* backgroundRemoval(const unsigned char* input, int width, int height, int blockSize, int constant);
unsigned char* removeShadows(unsigned char* input, unsigned char* background, int width, int height);
unsigned char* gaussianBlur(const unsigned char* input, int width, int height, int kernelSize);

#endif