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
include apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/progress.make

# Include the compile flags for this target's objects.
include apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/flags.make

apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o: apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/flags.make
apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o: ../apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation.cpp
apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o: apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/FluidParticleCoupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o -MF CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o.d -o CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation.cpp"

apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/FluidParticleCoupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation.cpp" > CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.i

apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/FluidParticleCoupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation.cpp" -o CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.s

# Object files for target LubricationForceEvaluation
LubricationForceEvaluation_OBJECTS = \
"CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o"

# External object files for target LubricationForceEvaluation
LubricationForceEvaluation_EXTERNAL_OBJECTS =

apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/LubricationForceEvaluation.cpp.o
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/build.make
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/blockforest/libblockforest.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/boundary/libboundary.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/core/libcore.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/field/libfield.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/lbm/liblbm.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/mesa_pd/libmesa_pd.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/postprocessing/libpostprocessing.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/timeloop/libtimeloop.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/vtk/libvtk.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/blockforest/libblockforest.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/boundary/libboundary.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/core/libcore.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/field/libfield.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/lbm/liblbm.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/mesa_pd/libmesa_pd.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/postprocessing/libpostprocessing.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/timeloop/libtimeloop.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/vtk/libvtk.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/blockforest/libblockforest.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/boundary/libboundary.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/core/libcore.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/field/libfield.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/lbm/liblbm.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/mesa_pd/libmesa_pd.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/postprocessing/libpostprocessing.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/timeloop/libtimeloop.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/vtk/libvtk.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/lbm/liblbm.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/gui/libgui.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/timeloop/libtimeloop.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/geometry/libgeometry.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/boundary/libboundary.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/field/libfield.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/vtk/libvtk.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/blockforest/libblockforest.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: src/core/libcore.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: extern/lodepng/liblodepng.a
apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation: apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LubricationForceEvaluation"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/FluidParticleCoupling" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LubricationForceEvaluation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/build: apps/benchmarks/FluidParticleCoupling/LubricationForceEvaluation
.PHONY : apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/build

apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/FluidParticleCoupling" && $(CMAKE_COMMAND) -P CMakeFiles/LubricationForceEvaluation.dir/cmake_clean.cmake
.PHONY : apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/clean

apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/FluidParticleCoupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/FluidParticleCoupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/benchmarks/FluidParticleCoupling/CMakeFiles/LubricationForceEvaluation.dir/depend
