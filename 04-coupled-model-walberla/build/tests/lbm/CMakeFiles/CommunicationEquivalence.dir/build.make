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
include tests/lbm/CMakeFiles/CommunicationEquivalence.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/lbm/CMakeFiles/CommunicationEquivalence.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/lbm/CMakeFiles/CommunicationEquivalence.dir/progress.make

# Include the compile flags for this target's objects.
include tests/lbm/CMakeFiles/CommunicationEquivalence.dir/flags.make

tests/lbm/CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o: tests/lbm/CMakeFiles/CommunicationEquivalence.dir/flags.make
tests/lbm/CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o: ../tests/lbm/refinement/CommunicationEquivalence.cpp
tests/lbm/CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o: tests/lbm/CMakeFiles/CommunicationEquivalence.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/lbm/CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/lbm/CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o -MF CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o.d -o CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/refinement/CommunicationEquivalence.cpp"

tests/lbm/CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/refinement/CommunicationEquivalence.cpp" > CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.i

tests/lbm/CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm/refinement/CommunicationEquivalence.cpp" -o CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.s

# Object files for target CommunicationEquivalence
CommunicationEquivalence_OBJECTS = \
"CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o"

# External object files for target CommunicationEquivalence
CommunicationEquivalence_EXTERNAL_OBJECTS =

tests/lbm/CommunicationEquivalence: tests/lbm/CMakeFiles/CommunicationEquivalence.dir/refinement/CommunicationEquivalence.cpp.o
tests/lbm/CommunicationEquivalence: tests/lbm/CMakeFiles/CommunicationEquivalence.dir/build.make
tests/lbm/CommunicationEquivalence: src/blockforest/libblockforest.a
tests/lbm/CommunicationEquivalence: src/lbm/liblbm.a
tests/lbm/CommunicationEquivalence: src/blockforest/libblockforest.a
tests/lbm/CommunicationEquivalence: src/lbm/liblbm.a
tests/lbm/CommunicationEquivalence: src/blockforest/libblockforest.a
tests/lbm/CommunicationEquivalence: src/lbm/liblbm.a
tests/lbm/CommunicationEquivalence: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/CommunicationEquivalence: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/CommunicationEquivalence: src/geometry/libgeometry.a
tests/lbm/CommunicationEquivalence: src/boundary/libboundary.a
tests/lbm/CommunicationEquivalence: extern/lodepng/liblodepng.a
tests/lbm/CommunicationEquivalence: src/gui/libgui.a
tests/lbm/CommunicationEquivalence: src/field/libfield.a
tests/lbm/CommunicationEquivalence: src/timeloop/libtimeloop.a
tests/lbm/CommunicationEquivalence: src/vtk/libvtk.a
tests/lbm/CommunicationEquivalence: src/blockforest/libblockforest.a
tests/lbm/CommunicationEquivalence: src/domain_decomposition/libdomain_decomposition.a
tests/lbm/CommunicationEquivalence: src/core/libcore.a
tests/lbm/CommunicationEquivalence: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm/CommunicationEquivalence: tests/lbm/CMakeFiles/CommunicationEquivalence.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CommunicationEquivalence"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CommunicationEquivalence.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/lbm/CMakeFiles/CommunicationEquivalence.dir/build: tests/lbm/CommunicationEquivalence
.PHONY : tests/lbm/CMakeFiles/CommunicationEquivalence.dir/build

tests/lbm/CMakeFiles/CommunicationEquivalence.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" && $(CMAKE_COMMAND) -P CMakeFiles/CommunicationEquivalence.dir/cmake_clean.cmake
.PHONY : tests/lbm/CMakeFiles/CommunicationEquivalence.dir/clean

tests/lbm/CMakeFiles/CommunicationEquivalence.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm/CMakeFiles/CommunicationEquivalence.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/lbm/CMakeFiles/CommunicationEquivalence.dir/depend

