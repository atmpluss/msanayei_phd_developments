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
include tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/progress.make

# Include the compile flags for this target's objects.
include tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/flags.make

tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o: tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/flags.make
tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o: ../tests/mesa_pd/mpi/ClearNextNeighborSync.cpp
tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o: tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/mesa_pd" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o -MF CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o.d -o CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/mesa_pd/mpi/ClearNextNeighborSync.cpp"

tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/mesa_pd" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/mesa_pd/mpi/ClearNextNeighborSync.cpp" > CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.i

tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/mesa_pd" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/mesa_pd/mpi/ClearNextNeighborSync.cpp" -o CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.s

# Object files for target MESA_PD_MPI_ClearNextNeighborSync
MESA_PD_MPI_ClearNextNeighborSync_OBJECTS = \
"CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o"

# External object files for target MESA_PD_MPI_ClearNextNeighborSync
MESA_PD_MPI_ClearNextNeighborSync_EXTERNAL_OBJECTS =

tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/mpi/ClearNextNeighborSync.cpp.o
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/build.make
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/blockforest/libblockforest.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/core/libcore.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/mesa_pd/libmesa_pd.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/blockforest/libblockforest.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/core/libcore.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/mesa_pd/libmesa_pd.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/blockforest/libblockforest.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/core/libcore.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/mesa_pd/libmesa_pd.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/vtk/libvtk.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/blockforest/libblockforest.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/domain_decomposition/libdomain_decomposition.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: src/core/libcore.a
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync: tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MESA_PD_MPI_ClearNextNeighborSync"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/mesa_pd" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/build: tests/mesa_pd/MESA_PD_MPI_ClearNextNeighborSync
.PHONY : tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/build

tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/mesa_pd" && $(CMAKE_COMMAND) -P CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/cmake_clean.cmake
.PHONY : tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/clean

tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/mesa_pd" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/mesa_pd" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/mesa_pd/CMakeFiles/MESA_PD_MPI_ClearNextNeighborSync.dir/depend

