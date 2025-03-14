# Enhancer für gescannte Bilder

Willkommen zum Projekt von **Daria** und **Liliia** für den Kurs **Algorithm Engineering**.

**Ziel:** eine ausführbare Anwendung zur Verbesserung der Lesbarkeit gescannter Dokumente.

### Installation

1. Clone Repository 
```sh
git clone https://github.com/pinkypeach42/algorithm-engineering.git
cd project
```
2. Build mit CMake 

```sh
mkdir build
cd build
cmake ..
```

Für MinGW Makefiles
`cmake .. -G "MinGW Makefiles"`

Für MSVC (Visual Studio) 
`cmake .. -G "Visual Studio 17 2022"`

**Build starten:**

Für  MinGW Makefiles
`mingw32-make`

Für MSVC (Visual Studio) 
`cmake --build ."`

### Release-Build
```sh
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
```

### Kompilieren
```sh
cmake --build build --config Release
```

Die ausführbaren Dateien befinden sich anschließend unter `./build/Debug` oder `./build/Release`, zusammen mit einigen Beispielbildern.

## Verwendung
Das Programm wird über die Kommandozeile ausgeführt:
```sh
 ./ImageEnhancer.exe -i <input_file> <optionale Flags>
```


Unser Programm bietet verschiedene Betriebsmodi. Für Hilfe rufen Sie `--help` auf.

| Argument  | Beschreibung |
|-----------|-------------|
| `-i` `<input_file>`  | Pfad zur Eingabedatei (erforderlich) |
| `-o` `<output_file>` | Pfad zur Ausgabedatei (optional, Standard: `../img/output/result.png`) |
| `-b`  | Aktiviert den Benchmark-Modus |
| `-G`  | Aktiviert die Hintergrundentfernung |
| `--help` | Zeigt die Hilfe an |



