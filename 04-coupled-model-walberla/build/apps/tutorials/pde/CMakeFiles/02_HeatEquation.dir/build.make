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
include apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/progress.make

# Include the compile flags for this target's objects.
include apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/flags.make

apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o: apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/flags.make
apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o: ../apps/tutorials/pde/02_HeatEquation.cpp
apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o: apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tutorials/pde" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o -MF CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o.d -o CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/tutorials/pde/02_HeatEquation.cpp"

apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tutorials/pde" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/tutorials/pde/02_HeatEquation.cpp" > CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.i

apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tutorials/pde" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/tutorials/pde/02_HeatEquation.cpp" -o CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.s

# Object files for target 02_HeatEquation
02_HeatEquation_OBJECTS = \
"CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o"

# External object files for target 02_HeatEquation
02_HeatEquation_EXTERNAL_OBJECTS =

apps/tutorials/pde/02_HeatEquation: apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/02_HeatEquation.cpp.o
apps/tutorials/pde/02_HeatEquation: apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/build.make
apps/tutorials/pde/02_HeatEquation: src/blockforest/libblockforest.a
apps/tutorials/pde/02_HeatEquation: src/core/libcore.a
apps/tutorials/pde/02_HeatEquation: src/field/libfield.a
apps/tutorials/pde/02_HeatEquation: src/timeloop/libtimeloop.a
apps/tutorials/pde/02_HeatEquation: src/gui/libgui.a
apps/tutorials/pde/02_HeatEquation: src/blockforest/libblockforest.a
apps/tutorials/pde/02_HeatEquation: src/core/libcore.a
apps/tutorials/pde/02_HeatEquation: src/field/libfield.a
apps/tutorials/pde/02_HeatEquation: src/timeloop/libtimeloop.a
apps/tutorials/pde/02_HeatEquation: src/gui/libgui.a
apps/tutorials/pde/02_HeatEquation: src/blockforest/libblockforest.a
apps/tutorials/pde/02_HeatEquation: src/core/libcore.a
apps/tutorials/pde/02_HeatEquation: src/field/libfield.a
apps/tutorials/pde/02_HeatEquation: src/timeloop/libtimeloop.a
apps/tutorials/pde/02_HeatEquation: src/gui/libgui.a
apps/tutorials/pde/02_HeatEquation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/tutorials/pde/02_HeatEquation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/tutorials/pde/02_HeatEquation: src/field/libfield.a
apps/tutorials/pde/02_HeatEquation: src/vtk/libvtk.a
apps/tutorials/pde/02_HeatEquation: src/blockforest/libblockforest.a
apps/tutorials/pde/02_HeatEquation: src/timeloop/libtimeloop.a
apps/tutorials/pde/02_HeatEquation: src/domain_decomposition/libdomain_decomposition.a
apps/tutorials/pde/02_HeatEquation: src/core/libcore.a
apps/tutorials/pde/02_HeatEquation: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
apps/tutorials/pde/02_HeatEquation: apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 02_HeatEquation"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tutorials/pde" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/02_HeatEquation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/build: apps/tutorials/pde/02_HeatEquation
.PHONY : apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/build

apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tutorials/pde" && $(CMAKE_COMMAND) -P CMakeFiles/02_HeatEquation.dir/cmake_clean.cmake
.PHONY : apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/clean

apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/tutorials/pde" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tutorials/pde" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/tutorials/pde/CMakeFiles/02_HeatEquation.dir/depend

