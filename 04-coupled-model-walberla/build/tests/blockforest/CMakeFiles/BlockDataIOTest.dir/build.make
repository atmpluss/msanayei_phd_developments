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
include tests/blockforest/CMakeFiles/BlockDataIOTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/blockforest/CMakeFiles/BlockDataIOTest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/blockforest/CMakeFiles/BlockDataIOTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/blockforest/CMakeFiles/BlockDataIOTest.dir/flags.make

tests/blockforest/CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o: tests/blockforest/CMakeFiles/BlockDataIOTest.dir/flags.make
tests/blockforest/CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o: ../tests/blockforest/BlockDataIOTest.cpp
tests/blockforest/CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o: tests/blockforest/CMakeFiles/BlockDataIOTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/blockforest/CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/blockforest/CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o -MF CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o.d -o CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/BlockDataIOTest.cpp"

tests/blockforest/CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/BlockDataIOTest.cpp" > CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.i

tests/blockforest/CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/BlockDataIOTest.cpp" -o CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.s

# Object files for target BlockDataIOTest
BlockDataIOTest_OBJECTS = \
"CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o"

# External object files for target BlockDataIOTest
BlockDataIOTest_EXTERNAL_OBJECTS =

tests/blockforest/BlockDataIOTest: tests/blockforest/CMakeFiles/BlockDataIOTest.dir/BlockDataIOTest.cpp.o
tests/blockforest/BlockDataIOTest: tests/blockforest/CMakeFiles/BlockDataIOTest.dir/build.make
tests/blockforest/BlockDataIOTest: src/core/libcore.a
tests/blockforest/BlockDataIOTest: src/field/libfield.a
tests/blockforest/BlockDataIOTest: src/blockforest/libblockforest.a
tests/blockforest/BlockDataIOTest: src/core/libcore.a
tests/blockforest/BlockDataIOTest: src/field/libfield.a
tests/blockforest/BlockDataIOTest: src/blockforest/libblockforest.a
tests/blockforest/BlockDataIOTest: src/core/libcore.a
tests/blockforest/BlockDataIOTest: src/field/libfield.a
tests/blockforest/BlockDataIOTest: src/blockforest/libblockforest.a
tests/blockforest/BlockDataIOTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/blockforest/BlockDataIOTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/blockforest/BlockDataIOTest: src/vtk/libvtk.a
tests/blockforest/BlockDataIOTest: src/blockforest/libblockforest.a
tests/blockforest/BlockDataIOTest: src/domain_decomposition/libdomain_decomposition.a
tests/blockforest/BlockDataIOTest: src/core/libcore.a
tests/blockforest/BlockDataIOTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/blockforest/BlockDataIOTest: tests/blockforest/CMakeFiles/BlockDataIOTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BlockDataIOTest"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BlockDataIOTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/blockforest/CMakeFiles/BlockDataIOTest.dir/build: tests/blockforest/BlockDataIOTest
.PHONY : tests/blockforest/CMakeFiles/BlockDataIOTest.dir/build

tests/blockforest/CMakeFiles/BlockDataIOTest.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" && $(CMAKE_COMMAND) -P CMakeFiles/BlockDataIOTest.dir/cmake_clean.cmake
.PHONY : tests/blockforest/CMakeFiles/BlockDataIOTest.dir/clean

tests/blockforest/CMakeFiles/BlockDataIOTest.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/CMakeFiles/BlockDataIOTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/blockforest/CMakeFiles/BlockDataIOTest.dir/depend

