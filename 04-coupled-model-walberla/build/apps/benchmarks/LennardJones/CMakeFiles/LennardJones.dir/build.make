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
include apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/progress.make

# Include the compile flags for this target's objects.
include apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/flags.make

apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/LennardJones.cpp.o: apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/flags.make
apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/LennardJones.cpp.o: ../apps/benchmarks/LennardJones/LennardJones.cpp
apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/LennardJones.cpp.o: apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/LennardJones.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/LennardJones" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/LennardJones.cpp.o -MF CMakeFiles/LennardJones.dir/LennardJones.cpp.o.d -o CMakeFiles/LennardJones.dir/LennardJones.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/LennardJones/LennardJones.cpp"

apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/LennardJones.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LennardJones.dir/LennardJones.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/LennardJones" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/LennardJones/LennardJones.cpp" > CMakeFiles/LennardJones.dir/LennardJones.cpp.i

apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/LennardJones.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LennardJones.dir/LennardJones.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/LennardJones" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/LennardJones/LennardJones.cpp" -o CMakeFiles/LennardJones.dir/LennardJones.cpp.s

# Object files for target LennardJones
LennardJones_OBJECTS = \
"CMakeFiles/LennardJones.dir/LennardJones.cpp.o"

# External object files for target LennardJones
LennardJones_EXTERNAL_OBJECTS =

apps/benchmarks/LennardJones/LennardJones: apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/LennardJones.cpp.o
apps/benchmarks/LennardJones/LennardJones: apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/build.make
apps/benchmarks/LennardJones/LennardJones: src/blockforest/libblockforest.a
apps/benchmarks/LennardJones/LennardJones: src/core/libcore.a
apps/benchmarks/LennardJones/LennardJones: src/pe/libpe.a
apps/benchmarks/LennardJones/LennardJones: src/blockforest/libblockforest.a
apps/benchmarks/LennardJones/LennardJones: src/core/libcore.a
apps/benchmarks/LennardJones/LennardJones: src/pe/libpe.a
apps/benchmarks/LennardJones/LennardJones: src/blockforest/libblockforest.a
apps/benchmarks/LennardJones/LennardJones: src/core/libcore.a
apps/benchmarks/LennardJones/LennardJones: src/pe/libpe.a
apps/benchmarks/LennardJones/LennardJones: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/LennardJones/LennardJones: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/LennardJones/LennardJones: src/geometry/libgeometry.a
apps/benchmarks/LennardJones/LennardJones: src/boundary/libboundary.a
apps/benchmarks/LennardJones/LennardJones: src/field/libfield.a
apps/benchmarks/LennardJones/LennardJones: src/vtk/libvtk.a
apps/benchmarks/LennardJones/LennardJones: src/blockforest/libblockforest.a
apps/benchmarks/LennardJones/LennardJones: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/LennardJones/LennardJones: src/core/libcore.a
apps/benchmarks/LennardJones/LennardJones: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/LennardJones/LennardJones: extern/lodepng/liblodepng.a
apps/benchmarks/LennardJones/LennardJones: apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LennardJones"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/LennardJones" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LennardJones.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/build: apps/benchmarks/LennardJones/LennardJones
.PHONY : apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/build

apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/LennardJones" && $(CMAKE_COMMAND) -P CMakeFiles/LennardJones.dir/cmake_clean.cmake
.PHONY : apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/clean

apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/LennardJones" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/LennardJones" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/benchmarks/LennardJones/CMakeFiles/LennardJones.dir/depend
