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
include tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/progress.make

# Include the compile flags for this target's objects.
include tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/flags.make

tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o: tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/flags.make
tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o: ../tests/pe_coupling/momentum_exchange_method/DragForceSphereMEM.cpp
tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o: tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o -MF CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o.d -o CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe_coupling/momentum_exchange_method/DragForceSphereMEM.cpp"

tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe_coupling/momentum_exchange_method/DragForceSphereMEM.cpp" > CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.i

tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe_coupling/momentum_exchange_method/DragForceSphereMEM.cpp" -o CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.s

# Object files for target DragForceSphereMEM
DragForceSphereMEM_OBJECTS = \
"CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o"

# External object files for target DragForceSphereMEM
DragForceSphereMEM_EXTERNAL_OBJECTS =

tests/pe_coupling/DragForceSphereMEM: tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/momentum_exchange_method/DragForceSphereMEM.cpp.o
tests/pe_coupling/DragForceSphereMEM: tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/build.make
tests/pe_coupling/DragForceSphereMEM: src/blockforest/libblockforest.a
tests/pe_coupling/DragForceSphereMEM: src/pe/libpe.a
tests/pe_coupling/DragForceSphereMEM: src/timeloop/libtimeloop.a
tests/pe_coupling/DragForceSphereMEM: src/pe_coupling/libpe_coupling.a
tests/pe_coupling/DragForceSphereMEM: src/blockforest/libblockforest.a
tests/pe_coupling/DragForceSphereMEM: src/pe/libpe.a
tests/pe_coupling/DragForceSphereMEM: src/timeloop/libtimeloop.a
tests/pe_coupling/DragForceSphereMEM: src/pe_coupling/libpe_coupling.a
tests/pe_coupling/DragForceSphereMEM: src/blockforest/libblockforest.a
tests/pe_coupling/DragForceSphereMEM: src/pe/libpe.a
tests/pe_coupling/DragForceSphereMEM: src/timeloop/libtimeloop.a
tests/pe_coupling/DragForceSphereMEM: src/pe_coupling/libpe_coupling.a
tests/pe_coupling/DragForceSphereMEM: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe_coupling/DragForceSphereMEM: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe_coupling/DragForceSphereMEM: src/pe/libpe.a
tests/pe_coupling/DragForceSphereMEM: src/lbm/liblbm.a
tests/pe_coupling/DragForceSphereMEM: src/geometry/libgeometry.a
tests/pe_coupling/DragForceSphereMEM: extern/lodepng/liblodepng.a
tests/pe_coupling/DragForceSphereMEM: src/boundary/libboundary.a
tests/pe_coupling/DragForceSphereMEM: src/gui/libgui.a
tests/pe_coupling/DragForceSphereMEM: src/timeloop/libtimeloop.a
tests/pe_coupling/DragForceSphereMEM: src/field/libfield.a
tests/pe_coupling/DragForceSphereMEM: src/vtk/libvtk.a
tests/pe_coupling/DragForceSphereMEM: src/blockforest/libblockforest.a
tests/pe_coupling/DragForceSphereMEM: src/domain_decomposition/libdomain_decomposition.a
tests/pe_coupling/DragForceSphereMEM: src/core/libcore.a
tests/pe_coupling/DragForceSphereMEM: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe_coupling/DragForceSphereMEM: tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DragForceSphereMEM"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DragForceSphereMEM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/build: tests/pe_coupling/DragForceSphereMEM
.PHONY : tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/build

tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && $(CMAKE_COMMAND) -P CMakeFiles/DragForceSphereMEM.dir/cmake_clean.cmake
.PHONY : tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/clean

tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe_coupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/pe_coupling/CMakeFiles/DragForceSphereMEM.dir/depend
