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
include apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/progress.make

# Include the compile flags for this target's objects.
include apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/flags.make

apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/main.cpp.o: apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/flags.make
apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/main.cpp.o: ../apps/tools/povrayFileCompressor/main.cpp
apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/main.cpp.o: apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/main.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tools/povrayFileCompressor" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/main.cpp.o -MF CMakeFiles/PovrayFileCompressor.dir/main.cpp.o.d -o CMakeFiles/PovrayFileCompressor.dir/main.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/tools/povrayFileCompressor/main.cpp"

apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PovrayFileCompressor.dir/main.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tools/povrayFileCompressor" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/tools/povrayFileCompressor/main.cpp" > CMakeFiles/PovrayFileCompressor.dir/main.cpp.i

apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PovrayFileCompressor.dir/main.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tools/povrayFileCompressor" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/tools/povrayFileCompressor/main.cpp" -o CMakeFiles/PovrayFileCompressor.dir/main.cpp.s

# Object files for target PovrayFileCompressor
PovrayFileCompressor_OBJECTS = \
"CMakeFiles/PovrayFileCompressor.dir/main.cpp.o"

# External object files for target PovrayFileCompressor
PovrayFileCompressor_EXTERNAL_OBJECTS =

apps/tools/povrayFileCompressor/PovrayFileCompressor: apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/main.cpp.o
apps/tools/povrayFileCompressor/PovrayFileCompressor: apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/build.make
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/postprocessing/libpostprocessing.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/postprocessing/libpostprocessing.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/postprocessing/libpostprocessing.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/tools/povrayFileCompressor/PovrayFileCompressor: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/geometry/libgeometry.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/boundary/libboundary.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/field/libfield.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/vtk/libvtk.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/blockforest/libblockforest.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/domain_decomposition/libdomain_decomposition.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: src/core/libcore.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/tools/povrayFileCompressor/PovrayFileCompressor: extern/lodepng/liblodepng.a
apps/tools/povrayFileCompressor/PovrayFileCompressor: apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PovrayFileCompressor"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tools/povrayFileCompressor" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PovrayFileCompressor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/build: apps/tools/povrayFileCompressor/PovrayFileCompressor
.PHONY : apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/build

apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tools/povrayFileCompressor" && $(CMAKE_COMMAND) -P CMakeFiles/PovrayFileCompressor.dir/cmake_clean.cmake
.PHONY : apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/clean

apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/tools/povrayFileCompressor" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tools/povrayFileCompressor" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/tools/povrayFileCompressor/CMakeFiles/PovrayFileCompressor.dir/depend

