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
CMAKE_SOURCE_DIR = "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/build"

# Include any dependencies generated for this target.
include CMakeFiles/fizzbuzz_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/fizzbuzz_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fizzbuzz_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fizzbuzz_tests.dir/flags.make

CMakeFiles/fizzbuzz_tests.dir/codegen:
.PHONY : CMakeFiles/fizzbuzz_tests.dir/codegen

CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o: CMakeFiles/fizzbuzz_tests.dir/flags.make
CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/fizzbuzz/catch_main.cpp
CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o: CMakeFiles/fizzbuzz_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o -MF CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o.d -o CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/catch_main.cpp"

CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/catch_main.cpp" > CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.i

CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/catch_main.cpp" -o CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.s

CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o: CMakeFiles/fizzbuzz_tests.dir/flags.make
CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/fizzbuzz/catch_tests_fizzbuzz.cpp
CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o: CMakeFiles/fizzbuzz_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o -MF CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o.d -o CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/catch_tests_fizzbuzz.cpp"

CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/catch_tests_fizzbuzz.cpp" > CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.i

CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/catch_tests_fizzbuzz.cpp" -o CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.s

# Object files for target fizzbuzz_tests
fizzbuzz_tests_OBJECTS = \
"CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o" \
"CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o"

# External object files for target fizzbuzz_tests
fizzbuzz_tests_EXTERNAL_OBJECTS =

fizzbuzz_tests: CMakeFiles/fizzbuzz_tests.dir/catch_main.cpp.o
fizzbuzz_tests: CMakeFiles/fizzbuzz_tests.dir/catch_tests_fizzbuzz.cpp.o
fizzbuzz_tests: CMakeFiles/fizzbuzz_tests.dir/build.make
fizzbuzz_tests: fizzbuzz/libfizzbuzz.a
fizzbuzz_tests: CMakeFiles/fizzbuzz_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable fizzbuzz_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fizzbuzz_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fizzbuzz_tests.dir/build: fizzbuzz_tests
.PHONY : CMakeFiles/fizzbuzz_tests.dir/build

CMakeFiles/fizzbuzz_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fizzbuzz_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fizzbuzz_tests.dir/clean

CMakeFiles/fizzbuzz_tests.dir/depend:
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/build" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/build" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/fizzbuzz/build/CMakeFiles/fizzbuzz_tests.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/fizzbuzz_tests.dir/depend

