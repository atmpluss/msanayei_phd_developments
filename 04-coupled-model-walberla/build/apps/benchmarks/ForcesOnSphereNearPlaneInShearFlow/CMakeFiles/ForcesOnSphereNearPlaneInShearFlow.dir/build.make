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
include apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/progress.make

# Include the compile flags for this target's objects.
include apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/flags.make

apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o: apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/flags.make
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o: ../apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow.cpp
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o: apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o -MF CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o.d -o CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow.cpp"

apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow.cpp" > CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.i

apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow.cpp" -o CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.s

# Object files for target ForcesOnSphereNearPlaneInShearFlow
ForcesOnSphereNearPlaneInShearFlow_OBJECTS = \
"CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o"

# External object files for target ForcesOnSphereNearPlaneInShearFlow
ForcesOnSphereNearPlaneInShearFlow_EXTERNAL_OBJECTS =

apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/ForcesOnSphereNearPlaneInShearFlow.cpp.o
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/build.make
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/blockforest/libblockforest.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/boundary/libboundary.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/core/libcore.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/field/libfield.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/lbm/liblbm.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/pe/libpe.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/pe_coupling/libpe_coupling.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/postprocessing/libpostprocessing.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/timeloop/libtimeloop.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/vtk/libvtk.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/blockforest/libblockforest.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/boundary/libboundary.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/core/libcore.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/field/libfield.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/lbm/liblbm.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/pe/libpe.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/pe_coupling/libpe_coupling.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/postprocessing/libpostprocessing.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/timeloop/libtimeloop.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/vtk/libvtk.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/blockforest/libblockforest.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/boundary/libboundary.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/core/libcore.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/field/libfield.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/lbm/liblbm.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/pe/libpe.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/pe_coupling/libpe_coupling.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/postprocessing/libpostprocessing.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/timeloop/libtimeloop.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/vtk/libvtk.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/lbm/liblbm.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/gui/libgui.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/timeloop/libtimeloop.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/pe/libpe.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/geometry/libgeometry.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/boundary/libboundary.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/field/libfield.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/vtk/libvtk.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/blockforest/libblockforest.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: src/core/libcore.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: extern/lodepng/liblodepng.a
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow: apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ForcesOnSphereNearPlaneInShearFlow"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/build: apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/ForcesOnSphereNearPlaneInShearFlow
.PHONY : apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/build

apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow" && $(CMAKE_COMMAND) -P CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/cmake_clean.cmake
.PHONY : apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/clean

apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/benchmarks/ForcesOnSphereNearPlaneInShearFlow/CMakeFiles/ForcesOnSphereNearPlaneInShearFlow.dir/depend

