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
include tests/pde/CMakeFiles/MGTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/pde/CMakeFiles/MGTest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/pde/CMakeFiles/MGTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/pde/CMakeFiles/MGTest.dir/flags.make

tests/pde/CMakeFiles/MGTest.dir/MGTest.cpp.o: tests/pde/CMakeFiles/MGTest.dir/flags.make
tests/pde/CMakeFiles/MGTest.dir/MGTest.cpp.o: ../tests/pde/MGTest.cpp
tests/pde/CMakeFiles/MGTest.dir/MGTest.cpp.o: tests/pde/CMakeFiles/MGTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/pde/CMakeFiles/MGTest.dir/MGTest.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pde" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/pde/CMakeFiles/MGTest.dir/MGTest.cpp.o -MF CMakeFiles/MGTest.dir/MGTest.cpp.o.d -o CMakeFiles/MGTest.dir/MGTest.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pde/MGTest.cpp"

tests/pde/CMakeFiles/MGTest.dir/MGTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MGTest.dir/MGTest.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pde" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pde/MGTest.cpp" > CMakeFiles/MGTest.dir/MGTest.cpp.i

tests/pde/CMakeFiles/MGTest.dir/MGTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MGTest.dir/MGTest.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pde" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pde/MGTest.cpp" -o CMakeFiles/MGTest.dir/MGTest.cpp.s

# Object files for target MGTest
MGTest_OBJECTS = \
"CMakeFiles/MGTest.dir/MGTest.cpp.o"

# External object files for target MGTest
MGTest_EXTERNAL_OBJECTS =

tests/pde/MGTest: tests/pde/CMakeFiles/MGTest.dir/MGTest.cpp.o
tests/pde/MGTest: tests/pde/CMakeFiles/MGTest.dir/build.make
tests/pde/MGTest: src/blockforest/libblockforest.a
tests/pde/MGTest: src/timeloop/libtimeloop.a
tests/pde/MGTest: src/vtk/libvtk.a
tests/pde/MGTest: src/pde/libpde.a
tests/pde/MGTest: src/blockforest/libblockforest.a
tests/pde/MGTest: src/timeloop/libtimeloop.a
tests/pde/MGTest: src/vtk/libvtk.a
tests/pde/MGTest: src/pde/libpde.a
tests/pde/MGTest: src/blockforest/libblockforest.a
tests/pde/MGTest: src/timeloop/libtimeloop.a
tests/pde/MGTest: src/vtk/libvtk.a
tests/pde/MGTest: src/pde/libpde.a
tests/pde/MGTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pde/MGTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pde/MGTest: src/boundary/libboundary.a
tests/pde/MGTest: src/field/libfield.a
tests/pde/MGTest: src/vtk/libvtk.a
tests/pde/MGTest: src/blockforest/libblockforest.a
tests/pde/MGTest: src/domain_decomposition/libdomain_decomposition.a
tests/pde/MGTest: src/core/libcore.a
tests/pde/MGTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pde/MGTest: tests/pde/CMakeFiles/MGTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MGTest"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pde" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MGTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/pde/CMakeFiles/MGTest.dir/build: tests/pde/MGTest
.PHONY : tests/pde/CMakeFiles/MGTest.dir/build

tests/pde/CMakeFiles/MGTest.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pde" && $(CMAKE_COMMAND) -P CMakeFiles/MGTest.dir/cmake_clean.cmake
.PHONY : tests/pde/CMakeFiles/MGTest.dir/clean

tests/pde/CMakeFiles/MGTest.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pde" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pde" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pde/CMakeFiles/MGTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/pde/CMakeFiles/MGTest.dir/depend

