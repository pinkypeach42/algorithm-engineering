#include "cli.h"
#include <unordered_map>
#include <string>
#include <optional>
#include <iostream>
using namespace std;


CLIArgs parseArguments(int argc, char** argv) {
    CLIArgs cliArgs;
    unordered_map<string, string> cliArguments;

    int i = 1;

    while (i < argc) {
        string currentArg = argv[i];
        if (i + 1 < argc && (currentArg == "-i" || currentArg == "-o")) {
            cliArguments[currentArg == "-i" ? "input" : "output"] = argv[i + 1];
            i += 2;
        }
        else if (currentArg == "-b") {
            cliArgs.benchmarkMode = true; // Aktiviere Benchmark-Modus
            i += 1;
        }
        else if (currentArg == "-g") {
            cliArgs.backgroundRemove = true; // Background removal aktivieren
            i += 1;
        }
        else if (currentArg == "--help") {
            cout << "Verwendung: " << argv[0] << " -i <Input datei> -o <Output datei> <flag>\n";
            cout << "Optionen:\n";
            cout << "  -i <Input datei> Pfad zu Eingabedatei\n";
            cout << "  -o <Output datei> Pfad zu Ausgabedatei\n";
            cout << "  -g Filter fuer Hintergrundentfernung aktivieren\n";
            cout << "  --help Hilfe anzeigen\n";
            cout << "  -b Benchmark-Modus aktivieren\n";
            exit(0);
        }
        else {
            cerr << "Unbekanntes Argument: " << currentArg << "\n";
            cerr << "Verwenden Sie --help fuer weitere Informationen!\n";
            exit(1);
        }
    }


    if (cliArguments.count("input")) {
        string inputPath = cliArguments["input"];
    
        if (inputPath.size() < 4 ||
            (inputPath.substr(inputPath.size() - 4) != ".png" &&
                inputPath.substr(inputPath.size() - 4) != ".jpg" &&
                inputPath.substr(inputPath.size() - 5) != ".jpeg")) {
            cerr << "Formatfehler. Formatt muss als .png, .jpg .jpeg sein\n";
            exit(1);
        }
        cliArgs.inputPath = inputPath;
    }
    else {
        cerr << "Fehler! Verwenden Sie -i <Input datei> oder  Dateiformatt prüfen\n";
        exit(1);
    }

    if (cliArguments.count("output")) {
        cliArgs.outputPath = cliArguments["output"];
    }
    else {
        // Standardausgabedatei, falls keine angegeben wurde
        cliArgs.outputPath = "../img/output/result.png";
    }

    return cliArgs;
}
