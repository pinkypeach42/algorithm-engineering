# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build"

# Include any dependencies generated for this target.
include quantize/CMakeFiles/quantize.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include quantize/CMakeFiles/quantize.dir/compiler_depend.make

# Include the progress variables for this target.
include quantize/CMakeFiles/quantize.dir/progress.make

# Include the compile flags for this target's objects.
include quantize/CMakeFiles/quantize.dir/flags.make

quantize/CMakeFiles/quantize.dir/codegen:
.PHONY : quantize/CMakeFiles/quantize.dir/codegen

quantize/CMakeFiles/quantize.dir/blur.c.o: quantize/CMakeFiles/quantize.dir/flags.make
quantize/CMakeFiles/quantize.dir/blur.c.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/quantpng/quantize/blur.c
quantize/CMakeFiles/quantize.dir/blur.c.o: quantize/CMakeFiles/quantize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object quantize/CMakeFiles/quantize.dir/blur.c.o"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT quantize/CMakeFiles/quantize.dir/blur.c.o -MF CMakeFiles/quantize.dir/blur.c.o.d -o CMakeFiles/quantize.dir/blur.c.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/blur.c"

quantize/CMakeFiles/quantize.dir/blur.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/quantize.dir/blur.c.i"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/blur.c" > CMakeFiles/quantize.dir/blur.c.i

quantize/CMakeFiles/quantize.dir/blur.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/quantize.dir/blur.c.s"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/blur.c" -o CMakeFiles/quantize.dir/blur.c.s

quantize/CMakeFiles/quantize.dir/kmeans.c.o: quantize/CMakeFiles/quantize.dir/flags.make
quantize/CMakeFiles/quantize.dir/kmeans.c.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/quantpng/quantize/kmeans.c
quantize/CMakeFiles/quantize.dir/kmeans.c.o: quantize/CMakeFiles/quantize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object quantize/CMakeFiles/quantize.dir/kmeans.c.o"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT quantize/CMakeFiles/quantize.dir/kmeans.c.o -MF CMakeFiles/quantize.dir/kmeans.c.o.d -o CMakeFiles/quantize.dir/kmeans.c.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/kmeans.c"

quantize/CMakeFiles/quantize.dir/kmeans.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/quantize.dir/kmeans.c.i"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/kmeans.c" > CMakeFiles/quantize.dir/kmeans.c.i

quantize/CMakeFiles/quantize.dir/kmeans.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/quantize.dir/kmeans.c.s"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/kmeans.c" -o CMakeFiles/quantize.dir/kmeans.c.s

quantize/CMakeFiles/quantize.dir/libimagequant.c.o: quantize/CMakeFiles/quantize.dir/flags.make
quantize/CMakeFiles/quantize.dir/libimagequant.c.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/quantpng/quantize/libimagequant.c
quantize/CMakeFiles/quantize.dir/libimagequant.c.o: quantize/CMakeFiles/quantize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object quantize/CMakeFiles/quantize.dir/libimagequant.c.o"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT quantize/CMakeFiles/quantize.dir/libimagequant.c.o -MF CMakeFiles/quantize.dir/libimagequant.c.o.d -o CMakeFiles/quantize.dir/libimagequant.c.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/libimagequant.c"

quantize/CMakeFiles/quantize.dir/libimagequant.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/quantize.dir/libimagequant.c.i"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/libimagequant.c" > CMakeFiles/quantize.dir/libimagequant.c.i

quantize/CMakeFiles/quantize.dir/libimagequant.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/quantize.dir/libimagequant.c.s"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/libimagequant.c" -o CMakeFiles/quantize.dir/libimagequant.c.s

quantize/CMakeFiles/quantize.dir/mediancut.c.o: quantize/CMakeFiles/quantize.dir/flags.make
quantize/CMakeFiles/quantize.dir/mediancut.c.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/quantpng/quantize/mediancut.c
quantize/CMakeFiles/quantize.dir/mediancut.c.o: quantize/CMakeFiles/quantize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object quantize/CMakeFiles/quantize.dir/mediancut.c.o"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT quantize/CMakeFiles/quantize.dir/mediancut.c.o -MF CMakeFiles/quantize.dir/mediancut.c.o.d -o CMakeFiles/quantize.dir/mediancut.c.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/mediancut.c"

quantize/CMakeFiles/quantize.dir/mediancut.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/quantize.dir/mediancut.c.i"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/mediancut.c" > CMakeFiles/quantize.dir/mediancut.c.i

quantize/CMakeFiles/quantize.dir/mediancut.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/quantize.dir/mediancut.c.s"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/mediancut.c" -o CMakeFiles/quantize.dir/mediancut.c.s

quantize/CMakeFiles/quantize.dir/mempool.c.o: quantize/CMakeFiles/quantize.dir/flags.make
quantize/CMakeFiles/quantize.dir/mempool.c.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/quantpng/quantize/mempool.c
quantize/CMakeFiles/quantize.dir/mempool.c.o: quantize/CMakeFiles/quantize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object quantize/CMakeFiles/quantize.dir/mempool.c.o"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT quantize/CMakeFiles/quantize.dir/mempool.c.o -MF CMakeFiles/quantize.dir/mempool.c.o.d -o CMakeFiles/quantize.dir/mempool.c.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/mempool.c"

quantize/CMakeFiles/quantize.dir/mempool.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/quantize.dir/mempool.c.i"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/mempool.c" > CMakeFiles/quantize.dir/mempool.c.i

quantize/CMakeFiles/quantize.dir/mempool.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/quantize.dir/mempool.c.s"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/mempool.c" -o CMakeFiles/quantize.dir/mempool.c.s

quantize/CMakeFiles/quantize.dir/nearest.c.o: quantize/CMakeFiles/quantize.dir/flags.make
quantize/CMakeFiles/quantize.dir/nearest.c.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/quantpng/quantize/nearest.c
quantize/CMakeFiles/quantize.dir/nearest.c.o: quantize/CMakeFiles/quantize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object quantize/CMakeFiles/quantize.dir/nearest.c.o"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT quantize/CMakeFiles/quantize.dir/nearest.c.o -MF CMakeFiles/quantize.dir/nearest.c.o.d -o CMakeFiles/quantize.dir/nearest.c.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/nearest.c"

quantize/CMakeFiles/quantize.dir/nearest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/quantize.dir/nearest.c.i"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/nearest.c" > CMakeFiles/quantize.dir/nearest.c.i

quantize/CMakeFiles/quantize.dir/nearest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/quantize.dir/nearest.c.s"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/nearest.c" -o CMakeFiles/quantize.dir/nearest.c.s

quantize/CMakeFiles/quantize.dir/pam.c.o: quantize/CMakeFiles/quantize.dir/flags.make
quantize/CMakeFiles/quantize.dir/pam.c.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/quantpng/quantize/pam.c
quantize/CMakeFiles/quantize.dir/pam.c.o: quantize/CMakeFiles/quantize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object quantize/CMakeFiles/quantize.dir/pam.c.o"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT quantize/CMakeFiles/quantize.dir/pam.c.o -MF CMakeFiles/quantize.dir/pam.c.o.d -o CMakeFiles/quantize.dir/pam.c.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/pam.c"

quantize/CMakeFiles/quantize.dir/pam.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/quantize.dir/pam.c.i"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/pam.c" > CMakeFiles/quantize.dir/pam.c.i

quantize/CMakeFiles/quantize.dir/pam.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/quantize.dir/pam.c.s"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize/pam.c" -o CMakeFiles/quantize.dir/pam.c.s

# Object files for target quantize
quantize_OBJECTS = \
"CMakeFiles/quantize.dir/blur.c.o" \
"CMakeFiles/quantize.dir/kmeans.c.o" \
"CMakeFiles/quantize.dir/libimagequant.c.o" \
"CMakeFiles/quantize.dir/mediancut.c.o" \
"CMakeFiles/quantize.dir/mempool.c.o" \
"CMakeFiles/quantize.dir/nearest.c.o" \
"CMakeFiles/quantize.dir/pam.c.o"

# External object files for target quantize
quantize_EXTERNAL_OBJECTS =

quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/blur.c.o
quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/kmeans.c.o
quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/libimagequant.c.o
quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/mediancut.c.o
quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/mempool.c.o
quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/nearest.c.o
quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/pam.c.o
quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/build.make
quantize/libquantize.a: quantize/CMakeFiles/quantize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libquantize.a"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && $(CMAKE_COMMAND) -P CMakeFiles/quantize.dir/cmake_clean_target.cmake
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/quantize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
quantize/CMakeFiles/quantize.dir/build: quantize/libquantize.a
.PHONY : quantize/CMakeFiles/quantize.dir/build

quantize/CMakeFiles/quantize.dir/clean:
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" && $(CMAKE_COMMAND) -P CMakeFiles/quantize.dir/cmake_clean.cmake
.PHONY : quantize/CMakeFiles/quantize.dir/clean

quantize/CMakeFiles/quantize.dir/depend:
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/quantize" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/quantize/CMakeFiles/quantize.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : quantize/CMakeFiles/quantize.dir/depend

