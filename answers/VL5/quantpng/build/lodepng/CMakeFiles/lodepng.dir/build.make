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
include lodepng/CMakeFiles/lodepng.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lodepng/CMakeFiles/lodepng.dir/compiler_depend.make

# Include the progress variables for this target.
include lodepng/CMakeFiles/lodepng.dir/progress.make

# Include the compile flags for this target's objects.
include lodepng/CMakeFiles/lodepng.dir/flags.make

lodepng/CMakeFiles/lodepng.dir/codegen:
.PHONY : lodepng/CMakeFiles/lodepng.dir/codegen

lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o: lodepng/CMakeFiles/lodepng.dir/flags.make
lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o: /Users/dascha/Desktop/waschbär\ meister/OpenMP/VL5/quantpng/lodepng/lodepng.cpp
lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o: lodepng/CMakeFiles/lodepng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/lodepng" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o -MF CMakeFiles/lodepng.dir/lodepng.cpp.o.d -o CMakeFiles/lodepng.dir/lodepng.cpp.o -c "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/lodepng/lodepng.cpp"

lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lodepng.dir/lodepng.cpp.i"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/lodepng" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/lodepng/lodepng.cpp" > CMakeFiles/lodepng.dir/lodepng.cpp.i

lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lodepng.dir/lodepng.cpp.s"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/lodepng" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/lodepng/lodepng.cpp" -o CMakeFiles/lodepng.dir/lodepng.cpp.s

# Object files for target lodepng
lodepng_OBJECTS = \
"CMakeFiles/lodepng.dir/lodepng.cpp.o"

# External object files for target lodepng
lodepng_EXTERNAL_OBJECTS =

lodepng/liblodepng.a: lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o
lodepng/liblodepng.a: lodepng/CMakeFiles/lodepng.dir/build.make
lodepng/liblodepng.a: lodepng/CMakeFiles/lodepng.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblodepng.a"
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/lodepng" && $(CMAKE_COMMAND) -P CMakeFiles/lodepng.dir/cmake_clean_target.cmake
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/lodepng" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lodepng.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lodepng/CMakeFiles/lodepng.dir/build: lodepng/liblodepng.a
.PHONY : lodepng/CMakeFiles/lodepng.dir/build

lodepng/CMakeFiles/lodepng.dir/clean:
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/lodepng" && $(CMAKE_COMMAND) -P CMakeFiles/lodepng.dir/cmake_clean.cmake
.PHONY : lodepng/CMakeFiles/lodepng.dir/clean

lodepng/CMakeFiles/lodepng.dir/depend:
	cd "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/lodepng" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/lodepng" "/Users/dascha/Desktop/waschbär meister/OpenMP/VL5/quantpng/build/lodepng/CMakeFiles/lodepng.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : lodepng/CMakeFiles/lodepng.dir/depend

