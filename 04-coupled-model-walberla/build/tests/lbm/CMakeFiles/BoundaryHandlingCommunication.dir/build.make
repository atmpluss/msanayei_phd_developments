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
include tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/progress.make

# Include the compile flags for this target's objects.
include tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/flags.make

tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o: tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/flags.make
tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o: ../tests/lbm/BoundaryHandlingCommunication.cpp
tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o: tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o -MF CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o.d -o CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/BoundaryHandlingCommunication.cpp"

tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/BoundaryHandlingCommunication.cpp" > CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.i

tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/BoundaryHandlingCommunication.cpp" -o CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.s

# Object files for target BoundaryHandlingCommunication
BoundaryHandlingCommunication_OBJECTS = \
"CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o"

# External object files for target BoundaryHandlingCommunication
BoundaryHandlingCommunication_EXTERNAL_OBJECTS =

tests/lbm/BoundaryHandlingCommunication: tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/BoundaryHandlingCommunication.cpp.o
tests/lbm/BoundaryHandlingCommunication: tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/build.make
tests/lbm/BoundaryHandlingCommunication: src/blockforest/libblockforest.a
tests/lbm/BoundaryHandlingCommunication: src/timeloop/libtimeloop.a
tests/lbm/BoundaryHandlingCommunication: src/lbm/liblbm.a
tests/lbm/BoundaryHandlingCommunication: src/blockforest/libblockforest.a
tests/lbm/BoundaryHandlingCommunication: src/timeloop/libtimeloop.a
tests/lbm/BoundaryHandlingCommunication: src/lbm/liblbm.a
tests/lbm/BoundaryHandlingCommunication: src/blockforest/libblockforest.a
tests/lbm/BoundaryHandlingCommunication: src/timeloop/libtimeloop.a
tests/lbm/BoundaryHandlingCommunication: src/lbm/liblbm.a
tests/lbm/BoundaryHandlingCommunication: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/BoundaryHandlingCommunication: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/BoundaryHandlingCommunication: src/geometry/libgeometry.a
tests/lbm/BoundaryHandlingCommunication: src/boundary/libboundary.a
tests/lbm/BoundaryHandlingCommunication: extern/lodepng/liblodepng.a
tests/lbm/BoundaryHandlingCommunication: src/gui/libgui.a
tests/lbm/BoundaryHandlingCommunication: src/timeloop/libtimeloop.a
tests/lbm/BoundaryHandlingCommunication: src/field/libfield.a
tests/lbm/BoundaryHandlingCommunication: src/vtk/libvtk.a
tests/lbm/BoundaryHandlingCommunication: src/blockforest/libblockforest.a
tests/lbm/BoundaryHandlingCommunication: src/domain_decomposition/libdomain_decomposition.a
tests/lbm/BoundaryHandlingCommunication: src/core/libcore.a
tests/lbm/BoundaryHandlingCommunication: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/BoundaryHandlingCommunication: tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BoundaryHandlingCommunication"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BoundaryHandlingCommunication.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/build: tests/lbm/BoundaryHandlingCommunication
.PHONY : tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/build

tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && $(CMAKE_COMMAND) -P CMakeFiles/BoundaryHandlingCommunication.dir/cmake_clean.cmake
.PHONY : tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/clean

tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/lbm/CMakeFiles/BoundaryHandlingCommunication.dir/depend
