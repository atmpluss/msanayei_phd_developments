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
include tests/lbm/CMakeFiles/PermeabilityTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/lbm/CMakeFiles/PermeabilityTest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/lbm/CMakeFiles/PermeabilityTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/lbm/CMakeFiles/PermeabilityTest.dir/flags.make

tests/lbm/CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o: tests/lbm/CMakeFiles/PermeabilityTest.dir/flags.make
tests/lbm/CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o: ../tests/lbm/evaluations/PermeabilityTest.cpp
tests/lbm/CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o: tests/lbm/CMakeFiles/PermeabilityTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/lbm/CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/lbm/CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o -MF CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o.d -o CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/evaluations/PermeabilityTest.cpp"

tests/lbm/CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/evaluations/PermeabilityTest.cpp" > CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.i

tests/lbm/CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/evaluations/PermeabilityTest.cpp" -o CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.s

# Object files for target PermeabilityTest
PermeabilityTest_OBJECTS = \
"CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o"

# External object files for target PermeabilityTest
PermeabilityTest_EXTERNAL_OBJECTS =

tests/lbm/PermeabilityTest: tests/lbm/CMakeFiles/PermeabilityTest.dir/evaluations/PermeabilityTest.cpp.o
tests/lbm/PermeabilityTest: tests/lbm/CMakeFiles/PermeabilityTest.dir/build.make
tests/lbm/PermeabilityTest: src/field/libfield.a
tests/lbm/PermeabilityTest: src/blockforest/libblockforest.a
tests/lbm/PermeabilityTest: src/geometry/libgeometry.a
tests/lbm/PermeabilityTest: src/timeloop/libtimeloop.a
tests/lbm/PermeabilityTest: src/vtk/libvtk.a
tests/lbm/PermeabilityTest: src/lbm/liblbm.a
tests/lbm/PermeabilityTest: src/field/libfield.a
tests/lbm/PermeabilityTest: src/blockforest/libblockforest.a
tests/lbm/PermeabilityTest: src/geometry/libgeometry.a
tests/lbm/PermeabilityTest: src/timeloop/libtimeloop.a
tests/lbm/PermeabilityTest: src/vtk/libvtk.a
tests/lbm/PermeabilityTest: src/lbm/liblbm.a
tests/lbm/PermeabilityTest: src/field/libfield.a
tests/lbm/PermeabilityTest: src/blockforest/libblockforest.a
tests/lbm/PermeabilityTest: src/geometry/libgeometry.a
tests/lbm/PermeabilityTest: src/timeloop/libtimeloop.a
tests/lbm/PermeabilityTest: src/vtk/libvtk.a
tests/lbm/PermeabilityTest: src/lbm/liblbm.a
tests/lbm/PermeabilityTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/PermeabilityTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/PermeabilityTest: src/geometry/libgeometry.a
tests/lbm/PermeabilityTest: extern/lodepng/liblodepng.a
tests/lbm/PermeabilityTest: src/boundary/libboundary.a
tests/lbm/PermeabilityTest: src/gui/libgui.a
tests/lbm/PermeabilityTest: src/field/libfield.a
tests/lbm/PermeabilityTest: src/vtk/libvtk.a
tests/lbm/PermeabilityTest: src/blockforest/libblockforest.a
tests/lbm/PermeabilityTest: src/timeloop/libtimeloop.a
tests/lbm/PermeabilityTest: src/domain_decomposition/libdomain_decomposition.a
tests/lbm/PermeabilityTest: src/core/libcore.a
tests/lbm/PermeabilityTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/PermeabilityTest: tests/lbm/CMakeFiles/PermeabilityTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PermeabilityTest"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PermeabilityTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/lbm/CMakeFiles/PermeabilityTest.dir/build: tests/lbm/PermeabilityTest
.PHONY : tests/lbm/CMakeFiles/PermeabilityTest.dir/build

tests/lbm/CMakeFiles/PermeabilityTest.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && $(CMAKE_COMMAND) -P CMakeFiles/PermeabilityTest.dir/cmake_clean.cmake
.PHONY : tests/lbm/CMakeFiles/PermeabilityTest.dir/clean

tests/lbm/CMakeFiles/PermeabilityTest.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm/CMakeFiles/PermeabilityTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/lbm/CMakeFiles/PermeabilityTest.dir/depend

