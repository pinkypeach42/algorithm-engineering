#ifndef CLI_H
#define CLI_H

#include <string>

struct CLIArgs {
    std::string inputPath;     
    std::string outputPath;    
    bool benchmarkMode = false; 
    bool backgroundRemove = false;
};

// Funktion zum Parsen der Befehlszeilenargumente
// @param argc: Anzahl der Argumente
// @param argv: Array der Argumente
CLIArgs parseArguments(int argc, char** argv);

#endif 
