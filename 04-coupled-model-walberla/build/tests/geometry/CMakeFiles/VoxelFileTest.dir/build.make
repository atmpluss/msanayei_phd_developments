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
include tests/geometry/CMakeFiles/VoxelFileTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/geometry/CMakeFiles/VoxelFileTest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/geometry/CMakeFiles/VoxelFileTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/geometry/CMakeFiles/VoxelFileTest.dir/flags.make

tests/geometry/CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o: tests/geometry/CMakeFiles/VoxelFileTest.dir/flags.make
tests/geometry/CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o: ../tests/geometry/VoxelFileTest.cpp
tests/geometry/CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o: tests/geometry/CMakeFiles/VoxelFileTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/geometry/CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/geometry" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/geometry/CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o -MF CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o.d -o CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/geometry/VoxelFileTest.cpp"

tests/geometry/CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/geometry" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/geometry/VoxelFileTest.cpp" > CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.i

tests/geometry/CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/geometry" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/geometry/VoxelFileTest.cpp" -o CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.s

# Object files for target VoxelFileTest
VoxelFileTest_OBJECTS = \
"CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o"

# External object files for target VoxelFileTest
VoxelFileTest_EXTERNAL_OBJECTS =

tests/geometry/VoxelFileTest: tests/geometry/CMakeFiles/VoxelFileTest.dir/VoxelFileTest.cpp.o
tests/geometry/VoxelFileTest: tests/geometry/CMakeFiles/VoxelFileTest.dir/build.make
tests/geometry/VoxelFileTest: src/geometry/libgeometry.a
tests/geometry/VoxelFileTest: src/geometry/libgeometry.a
tests/geometry/VoxelFileTest: src/geometry/libgeometry.a
tests/geometry/VoxelFileTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/geometry/VoxelFileTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/geometry/VoxelFileTest: src/boundary/libboundary.a
tests/geometry/VoxelFileTest: src/field/libfield.a
tests/geometry/VoxelFileTest: src/vtk/libvtk.a
tests/geometry/VoxelFileTest: src/blockforest/libblockforest.a
tests/geometry/VoxelFileTest: src/domain_decomposition/libdomain_decomposition.a
tests/geometry/VoxelFileTest: src/core/libcore.a
tests/geometry/VoxelFileTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/geometry/VoxelFileTest: extern/lodepng/liblodepng.a
tests/geometry/VoxelFileTest: tests/geometry/CMakeFiles/VoxelFileTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable VoxelFileTest"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/geometry" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VoxelFileTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/geometry/CMakeFiles/VoxelFileTest.dir/build: tests/geometry/VoxelFileTest
.PHONY : tests/geometry/CMakeFiles/VoxelFileTest.dir/build

tests/geometry/CMakeFiles/VoxelFileTest.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/geometry" && $(CMAKE_COMMAND) -P CMakeFiles/VoxelFileTest.dir/cmake_clean.cmake
.PHONY : tests/geometry/CMakeFiles/VoxelFileTest.dir/clean

tests/geometry/CMakeFiles/VoxelFileTest.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/geometry" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/geometry" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/geometry/CMakeFiles/VoxelFileTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/geometry/CMakeFiles/VoxelFileTest.dir/depend

