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
include tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/progress.make

# Include the compile flags for this target's objects.
include tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/flags.make

tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o: tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/flags.make
tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o: ../tests/pe_coupling/partially_saturated_cells_method/TorqueSpherePSM.cpp
tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o: tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o -MF CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o.d -o CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe_coupling/partially_saturated_cells_method/TorqueSpherePSM.cpp"

tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe_coupling/partially_saturated_cells_method/TorqueSpherePSM.cpp" > CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.i

tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe_coupling/partially_saturated_cells_method/TorqueSpherePSM.cpp" -o CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.s

# Object files for target TorqueSpherePSM
TorqueSpherePSM_OBJECTS = \
"CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o"

# External object files for target TorqueSpherePSM
TorqueSpherePSM_EXTERNAL_OBJECTS =

tests/pe_coupling/TorqueSpherePSM: tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/partially_saturated_cells_method/TorqueSpherePSM.cpp.o
tests/pe_coupling/TorqueSpherePSM: tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/build.make
tests/pe_coupling/TorqueSpherePSM: src/blockforest/libblockforest.a
tests/pe_coupling/TorqueSpherePSM: src/pe/libpe.a
tests/pe_coupling/TorqueSpherePSM: src/timeloop/libtimeloop.a
tests/pe_coupling/TorqueSpherePSM: src/pe_coupling/libpe_coupling.a
tests/pe_coupling/TorqueSpherePSM: src/blockforest/libblockforest.a
tests/pe_coupling/TorqueSpherePSM: src/pe/libpe.a
tests/pe_coupling/TorqueSpherePSM: src/timeloop/libtimeloop.a
tests/pe_coupling/TorqueSpherePSM: src/pe_coupling/libpe_coupling.a
tests/pe_coupling/TorqueSpherePSM: src/blockforest/libblockforest.a
tests/pe_coupling/TorqueSpherePSM: src/pe/libpe.a
tests/pe_coupling/TorqueSpherePSM: src/timeloop/libtimeloop.a
tests/pe_coupling/TorqueSpherePSM: src/pe_coupling/libpe_coupling.a
tests/pe_coupling/TorqueSpherePSM: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe_coupling/TorqueSpherePSM: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe_coupling/TorqueSpherePSM: src/pe/libpe.a
tests/pe_coupling/TorqueSpherePSM: src/lbm/liblbm.a
tests/pe_coupling/TorqueSpherePSM: src/geometry/libgeometry.a
tests/pe_coupling/TorqueSpherePSM: extern/lodepng/liblodepng.a
tests/pe_coupling/TorqueSpherePSM: src/boundary/libboundary.a
tests/pe_coupling/TorqueSpherePSM: src/gui/libgui.a
tests/pe_coupling/TorqueSpherePSM: src/timeloop/libtimeloop.a
tests/pe_coupling/TorqueSpherePSM: src/field/libfield.a
tests/pe_coupling/TorqueSpherePSM: src/vtk/libvtk.a
tests/pe_coupling/TorqueSpherePSM: src/blockforest/libblockforest.a
tests/pe_coupling/TorqueSpherePSM: src/domain_decomposition/libdomain_decomposition.a
tests/pe_coupling/TorqueSpherePSM: src/core/libcore.a
tests/pe_coupling/TorqueSpherePSM: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe_coupling/TorqueSpherePSM: tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TorqueSpherePSM"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TorqueSpherePSM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/build: tests/pe_coupling/TorqueSpherePSM
.PHONY : tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/build

tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" && $(CMAKE_COMMAND) -P CMakeFiles/TorqueSpherePSM.dir/cmake_clean.cmake
.PHONY : tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/clean

tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe_coupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/pe_coupling/CMakeFiles/TorqueSpherePSM.dir/depend

