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
include apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/progress.make

# Include the compile flags for this target's objects.
include apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/flags.make

apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o: apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/flags.make
apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o: ../apps/benchmarks/CouetteFlow/CouetteFlow.cpp
apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o: apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o -MF CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o.d -o CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CouetteFlow.cpp"

apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CouetteFlow.cpp" > CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.i

apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CouetteFlow.cpp" -o CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.s

# Object files for target CouetteFlow
CouetteFlow_OBJECTS = \
"CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o"

# External object files for target CouetteFlow
CouetteFlow_EXTERNAL_OBJECTS =

apps/benchmarks/CouetteFlow/CouetteFlow: apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/CouetteFlow.cpp.o
apps/benchmarks/CouetteFlow/CouetteFlow: apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/build.make
apps/benchmarks/CouetteFlow/CouetteFlow: src/blockforest/libblockforest.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/boundary/libboundary.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/core/libcore.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/field/libfield.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/lbm/liblbm.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/postprocessing/libpostprocessing.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/timeloop/libtimeloop.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/vtk/libvtk.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/sqlite/libsqlite.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/blockforest/libblockforest.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/boundary/libboundary.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/core/libcore.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/field/libfield.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/lbm/liblbm.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/postprocessing/libpostprocessing.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/timeloop/libtimeloop.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/vtk/libvtk.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/sqlite/libsqlite.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/blockforest/libblockforest.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/boundary/libboundary.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/core/libcore.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/field/libfield.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/lbm/liblbm.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/postprocessing/libpostprocessing.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/timeloop/libtimeloop.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/vtk/libvtk.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/sqlite/libsqlite.a
apps/benchmarks/CouetteFlow/CouetteFlow: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/CouetteFlow/CouetteFlow: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/CouetteFlow/CouetteFlow: src/gui/libgui.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/timeloop/libtimeloop.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/geometry/libgeometry.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/boundary/libboundary.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/field/libfield.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/vtk/libvtk.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/blockforest/libblockforest.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/CouetteFlow/CouetteFlow: extern/lodepng/liblodepng.a
apps/benchmarks/CouetteFlow/CouetteFlow: src/core/libcore.a
apps/benchmarks/CouetteFlow/CouetteFlow: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/CouetteFlow/CouetteFlow: extern/sqlite3/libsqlite3.a
apps/benchmarks/CouetteFlow/CouetteFlow: apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CouetteFlow"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CouetteFlow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/build: apps/benchmarks/CouetteFlow/CouetteFlow
.PHONY : apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/build

apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow" && $(CMAKE_COMMAND) -P CMakeFiles/CouetteFlow.dir/cmake_clean.cmake
.PHONY : apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/clean

apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/benchmarks/CouetteFlow/CMakeFiles/CouetteFlow.dir/depend
