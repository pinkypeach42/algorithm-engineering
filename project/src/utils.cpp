#include "utils.h"
#include <sys/stat.h> 

#ifdef _WIN32
#include <direct.h> 
#endif

bool createOutputDirectory(const std::string& path) {

#ifdef _WIN32
    int result = _mkdir(path.c_str()); // Für Windows
#else
    int result = mkdir(path.c_str(), 0777); // Für Linux/macOS
#endif

    if (result == 0 || errno == EEXIST) {
        return true;
    }
    std::cerr << "Fehler beim Erstellen der Ausgabeverzeichnisses: " << path << std::endl;
    return false;
}
