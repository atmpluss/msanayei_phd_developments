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
include tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/progress.make

# Include the compile flags for this target's objects.
include tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/flags.make

tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o: tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/flags.make
tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o: ../tests/lbm_mesapd_coupling/momentum_exchange_method/PdfReconstruction.cpp
tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o: tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm_mesapd_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o -MF CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o.d -o CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm_mesapd_coupling/momentum_exchange_method/PdfReconstruction.cpp"

tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm_mesapd_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm_mesapd_coupling/momentum_exchange_method/PdfReconstruction.cpp" > CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.i

tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm_mesapd_coupling" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm_mesapd_coupling/momentum_exchange_method/PdfReconstruction.cpp" -o CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.s

# Object files for target LBM_MESAPD_COUPLING_MEM_PdfReconstruction
LBM_MESAPD_COUPLING_MEM_PdfReconstruction_OBJECTS = \
"CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o"

# External object files for target LBM_MESAPD_COUPLING_MEM_PdfReconstruction
LBM_MESAPD_COUPLING_MEM_PdfReconstruction_EXTERNAL_OBJECTS =

tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/momentum_exchange_method/PdfReconstruction.cpp.o
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/build.make
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/core/libcore.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/mesa_pd/libmesa_pd.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm/liblbm.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/domain_decomposition/libdomain_decomposition.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/field/libfield.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/vtk/libvtk.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/core/libcore.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/mesa_pd/libmesa_pd.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm/liblbm.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/domain_decomposition/libdomain_decomposition.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/field/libfield.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/vtk/libvtk.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/core/libcore.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/mesa_pd/libmesa_pd.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm/liblbm.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/domain_decomposition/libdomain_decomposition.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/field/libfield.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/vtk/libvtk.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm_mesapd_coupling/liblbm_mesapd_coupling.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/mesa_pd/libmesa_pd.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/lbm/liblbm.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/geometry/libgeometry.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: extern/lodepng/liblodepng.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/gui/libgui.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/timeloop/libtimeloop.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/boundary/libboundary.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/field/libfield.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/vtk/libvtk.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/blockforest/libblockforest.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/domain_decomposition/libdomain_decomposition.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: src/core/libcore.a
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction: tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LBM_MESAPD_COUPLING_MEM_PdfReconstruction"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm_mesapd_coupling" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/build: tests/lbm_mesapd_coupling/LBM_MESAPD_COUPLING_MEM_PdfReconstruction
.PHONY : tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/build

tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm_mesapd_coupling" && $(CMAKE_COMMAND) -P CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/cmake_clean.cmake
.PHONY : tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/clean

tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/lbm_mesapd_coupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm_mesapd_coupling" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/lbm_mesapd_coupling/CMakeFiles/LBM_MESAPD_COUPLING_MEM_PdfReconstruction.dir/depend

