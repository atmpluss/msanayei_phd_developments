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
include tests/blockforest/CMakeFiles/DeterministicCreation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/blockforest/CMakeFiles/DeterministicCreation.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/blockforest/CMakeFiles/DeterministicCreation.dir/progress.make

# Include the compile flags for this target's objects.
include tests/blockforest/CMakeFiles/DeterministicCreation.dir/flags.make

tests/blockforest/CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o: tests/blockforest/CMakeFiles/DeterministicCreation.dir/flags.make
tests/blockforest/CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o: ../tests/blockforest/DeterministicCreation.cpp
tests/blockforest/CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o: tests/blockforest/CMakeFiles/DeterministicCreation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/blockforest/CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/blockforest/CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o -MF CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o.d -o CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/DeterministicCreation.cpp"

tests/blockforest/CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/DeterministicCreation.cpp" > CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.i

tests/blockforest/CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/DeterministicCreation.cpp" -o CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.s

# Object files for target DeterministicCreation
DeterministicCreation_OBJECTS = \
"CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o"

# External object files for target DeterministicCreation
DeterministicCreation_EXTERNAL_OBJECTS =

tests/blockforest/DeterministicCreation: tests/blockforest/CMakeFiles/DeterministicCreation.dir/DeterministicCreation.cpp.o
tests/blockforest/DeterministicCreation: tests/blockforest/CMakeFiles/DeterministicCreation.dir/build.make
tests/blockforest/DeterministicCreation: src/core/libcore.a
tests/blockforest/DeterministicCreation: src/blockforest/libblockforest.a
tests/blockforest/DeterministicCreation: src/core/libcore.a
tests/blockforest/DeterministicCreation: src/blockforest/libblockforest.a
tests/blockforest/DeterministicCreation: src/core/libcore.a
tests/blockforest/DeterministicCreation: src/blockforest/libblockforest.a
tests/blockforest/DeterministicCreation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/blockforest/DeterministicCreation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/blockforest/DeterministicCreation: src/domain_decomposition/libdomain_decomposition.a
tests/blockforest/DeterministicCreation: src/core/libcore.a
tests/blockforest/DeterministicCreation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/blockforest/DeterministicCreation: tests/blockforest/CMakeFiles/DeterministicCreation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DeterministicCreation"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DeterministicCreation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/blockforest/CMakeFiles/DeterministicCreation.dir/build: tests/blockforest/DeterministicCreation
.PHONY : tests/blockforest/CMakeFiles/DeterministicCreation.dir/build

tests/blockforest/CMakeFiles/DeterministicCreation.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && $(CMAKE_COMMAND) -P CMakeFiles/DeterministicCreation.dir/cmake_clean.cmake
.PHONY : tests/blockforest/CMakeFiles/DeterministicCreation.dir/clean

tests/blockforest/CMakeFiles/DeterministicCreation.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/CMakeFiles/DeterministicCreation.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/blockforest/CMakeFiles/DeterministicCreation.dir/depend

