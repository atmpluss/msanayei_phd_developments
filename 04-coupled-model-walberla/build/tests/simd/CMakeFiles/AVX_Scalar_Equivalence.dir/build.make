# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build"

# Include any dependencies generated for this target.
include tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/progress.make

# Include the compile flags for this target's objects.
include tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/flags.make

tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o: tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/flags.make
tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o: ../tests/simd/SIMD_Equivalence.cpp
tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o: tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/simd" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o -MF CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o.d -o CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/simd/SIMD_Equivalence.cpp"

tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/simd" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/simd/SIMD_Equivalence.cpp" > CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.i

tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/simd" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/simd/SIMD_Equivalence.cpp" -o CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.s

# Object files for target AVX_Scalar_Equivalence
AVX_Scalar_Equivalence_OBJECTS = \
"CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o"

# External object files for target AVX_Scalar_Equivalence
AVX_Scalar_Equivalence_EXTERNAL_OBJECTS =

tests/simd/AVX_Scalar_Equivalence: tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/SIMD_Equivalence.cpp.o
tests/simd/AVX_Scalar_Equivalence: tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/build.make
tests/simd/AVX_Scalar_Equivalence: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/simd/AVX_Scalar_Equivalence: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/simd/AVX_Scalar_Equivalence: src/core/libcore.a
tests/simd/AVX_Scalar_Equivalence: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/simd/AVX_Scalar_Equivalence: tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AVX_Scalar_Equivalence"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/simd" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AVX_Scalar_Equivalence.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/build: tests/simd/AVX_Scalar_Equivalence
.PHONY : tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/build

tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/simd" && $(CMAKE_COMMAND) -P CMakeFiles/AVX_Scalar_Equivalence.dir/cmake_clean.cmake
.PHONY : tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/clean

tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/simd" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/simd" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/simd/CMakeFiles/AVX_Scalar_Equivalence.dir/depend

