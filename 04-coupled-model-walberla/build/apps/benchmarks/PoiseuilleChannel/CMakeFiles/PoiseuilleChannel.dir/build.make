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
include apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/progress.make

# Include the compile flags for this target's objects.
include apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/flags.make

apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o: apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/flags.make
apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o: ../apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel.cpp
apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o: apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/PoiseuilleChannel" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o -MF CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o.d -o CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel.cpp"

apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/PoiseuilleChannel" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel.cpp" > CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.i

apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/PoiseuilleChannel" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel.cpp" -o CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.s

# Object files for target PoiseuilleChannel
PoiseuilleChannel_OBJECTS = \
"CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o"

# External object files for target PoiseuilleChannel
PoiseuilleChannel_EXTERNAL_OBJECTS =

apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/PoiseuilleChannel.cpp.o
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/build.make
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/blockforest/libblockforest.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/boundary/libboundary.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/core/libcore.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/field/libfield.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/lbm/liblbm.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/postprocessing/libpostprocessing.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/timeloop/libtimeloop.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/vtk/libvtk.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/sqlite/libsqlite.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/blockforest/libblockforest.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/boundary/libboundary.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/core/libcore.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/field/libfield.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/lbm/liblbm.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/postprocessing/libpostprocessing.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/timeloop/libtimeloop.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/vtk/libvtk.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/sqlite/libsqlite.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/blockforest/libblockforest.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/boundary/libboundary.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/core/libcore.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/field/libfield.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/lbm/liblbm.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/postprocessing/libpostprocessing.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/timeloop/libtimeloop.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/vtk/libvtk.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/sqlite/libsqlite.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/gui/libgui.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/timeloop/libtimeloop.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/geometry/libgeometry.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/boundary/libboundary.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/field/libfield.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/vtk/libvtk.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/blockforest/libblockforest.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/domain_decomposition/libdomain_decomposition.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: extern/lodepng/liblodepng.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: src/core/libcore.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: extern/sqlite3/libsqlite3.a
apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel: apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PoiseuilleChannel"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/PoiseuilleChannel" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PoiseuilleChannel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/build: apps/benchmarks/PoiseuilleChannel/PoiseuilleChannel
.PHONY : apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/build

apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/PoiseuilleChannel" && $(CMAKE_COMMAND) -P CMakeFiles/PoiseuilleChannel.dir/cmake_clean.cmake
.PHONY : apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/clean

apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/PoiseuilleChannel" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/PoiseuilleChannel" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/benchmarks/PoiseuilleChannel/CMakeFiles/PoiseuilleChannel.dir/depend

