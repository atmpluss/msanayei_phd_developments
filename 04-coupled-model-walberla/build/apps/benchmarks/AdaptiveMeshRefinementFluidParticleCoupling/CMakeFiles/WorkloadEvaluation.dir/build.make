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
include apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/progress.make

# Include the compile flags for this target's objects.
include apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/flags.make

apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o: apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/flags.make
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o: ../apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation.cpp
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o: apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o -MF CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o.d -o CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation.cpp"

apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation.cpp" > CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.i

apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation.cpp" -o CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.s

# Object files for target WorkloadEvaluation
WorkloadEvaluation_OBJECTS = \
"CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o"

# External object files for target WorkloadEvaluation
WorkloadEvaluation_EXTERNAL_OBJECTS =

apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/WorkloadEvaluation.cpp.o
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/build.make
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/blockforest/libblockforest.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/boundary/libboundary.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/core/libcore.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/field/libfield.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/lbm/liblbm.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/pe/libpe.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/pe_coupling/libpe_coupling.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/postprocessing/libpostprocessing.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/timeloop/libtimeloop.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/vtk/libvtk.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/blockforest/libblockforest.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/boundary/libboundary.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/core/libcore.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/field/libfield.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/lbm/liblbm.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/pe/libpe.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/pe_coupling/libpe_coupling.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/postprocessing/libpostprocessing.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/timeloop/libtimeloop.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/vtk/libvtk.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/blockforest/libblockforest.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/boundary/libboundary.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/core/libcore.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/field/libfield.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/lbm/liblbm.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/pe/libpe.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/pe_coupling/libpe_coupling.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/postprocessing/libpostprocessing.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/timeloop/libtimeloop.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/vtk/libvtk.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/lbm/liblbm.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/gui/libgui.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/timeloop/libtimeloop.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/pe/libpe.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/geometry/libgeometry.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/boundary/libboundary.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/field/libfield.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/vtk/libvtk.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/blockforest/libblockforest.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: src/core/libcore.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: extern/lodepng/liblodepng.a
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation: apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable WorkloadEvaluation"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WorkloadEvaluation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/build: apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/WorkloadEvaluation
.PHONY : apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/build

apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling" && $(CMAKE_COMMAND) -P CMakeFiles/WorkloadEvaluation.dir/cmake_clean.cmake
.PHONY : apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/clean

apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/benchmarks/AdaptiveMeshRefinementFluidParticleCoupling/CMakeFiles/WorkloadEvaluation.dir/depend

