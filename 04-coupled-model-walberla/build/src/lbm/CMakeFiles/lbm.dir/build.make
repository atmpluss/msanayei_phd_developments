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
include src/lbm/CMakeFiles/lbm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/lbm/CMakeFiles/lbm.dir/compiler_depend.make

# Include the progress variables for this target.
include src/lbm/CMakeFiles/lbm.dir/progress.make

# Include the compile flags for this target's objects.
include src/lbm/CMakeFiles/lbm.dir/flags.make

src/lbm/CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o: src/lbm/CMakeFiles/lbm.dir/flags.make
src/lbm/CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o: ../src/lbm/field/initializer/ExprSystemInitFunction.cpp
src/lbm/CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o: src/lbm/CMakeFiles/lbm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lbm/CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lbm/CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o -MF CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o.d -o CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/field/initializer/ExprSystemInitFunction.cpp"

src/lbm/CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/field/initializer/ExprSystemInitFunction.cpp" > CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.i

src/lbm/CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/field/initializer/ExprSystemInitFunction.cpp" -o CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.s

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o: src/lbm/CMakeFiles/lbm.dir/flags.make
src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o: ../src/lbm/free_surface/bubble_model/DistanceInfo.cpp
src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o: src/lbm/CMakeFiles/lbm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o -MF CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o.d -o CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/DistanceInfo.cpp"

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/DistanceInfo.cpp" > CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.i

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/DistanceInfo.cpp" -o CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.s

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o: src/lbm/CMakeFiles/lbm.dir/flags.make
src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o: ../src/lbm/free_surface/bubble_model/MergeInformation.cpp
src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o: src/lbm/CMakeFiles/lbm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o -MF CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o.d -o CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/MergeInformation.cpp"

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/MergeInformation.cpp" > CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.i

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/MergeInformation.cpp" -o CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.s

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o: src/lbm/CMakeFiles/lbm.dir/flags.make
src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o: ../src/lbm/free_surface/bubble_model/NewBubbleCommunication.cpp
src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o: src/lbm/CMakeFiles/lbm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o -MF CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o.d -o CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/NewBubbleCommunication.cpp"

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/NewBubbleCommunication.cpp" > CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.i

src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/bubble_model/NewBubbleCommunication.cpp" -o CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.s

src/lbm/CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o: src/lbm/CMakeFiles/lbm.dir/flags.make
src/lbm/CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o: ../src/lbm/free_surface/surface_geometry/Utility.cpp
src/lbm/CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o: src/lbm/CMakeFiles/lbm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/lbm/CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lbm/CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o -MF CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o.d -o CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/surface_geometry/Utility.cpp"

src/lbm/CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/surface_geometry/Utility.cpp" > CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.i

src/lbm/CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/free_surface/surface_geometry/Utility.cpp" -o CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.s

src/lbm/CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o: src/lbm/CMakeFiles/lbm.dir/flags.make
src/lbm/CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o: ../src/lbm/geometry/IntersectionRatio.cpp
src/lbm/CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o: src/lbm/CMakeFiles/lbm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/lbm/CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lbm/CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o -MF CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o.d -o CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/geometry/IntersectionRatio.cpp"

src/lbm/CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/geometry/IntersectionRatio.cpp" > CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.i

src/lbm/CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/geometry/IntersectionRatio.cpp" -o CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.s

src/lbm/CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o: src/lbm/CMakeFiles/lbm.dir/flags.make
src/lbm/CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o: ../src/lbm/lattice_model/CollisionModel.cpp
src/lbm/CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o: src/lbm/CMakeFiles/lbm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/lbm/CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lbm/CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o -MF CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o.d -o CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/lattice_model/CollisionModel.cpp"

src/lbm/CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/lattice_model/CollisionModel.cpp" > CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.i

src/lbm/CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm/lattice_model/CollisionModel.cpp" -o CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.s

# Object files for target lbm
lbm_OBJECTS = \
"CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o" \
"CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o" \
"CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o" \
"CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o" \
"CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o" \
"CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o" \
"CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o"

# External object files for target lbm
lbm_EXTERNAL_OBJECTS =

src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/field/initializer/ExprSystemInitFunction.cpp.o
src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/DistanceInfo.cpp.o
src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/MergeInformation.cpp.o
src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/free_surface/bubble_model/NewBubbleCommunication.cpp.o
src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/free_surface/surface_geometry/Utility.cpp.o
src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/geometry/IntersectionRatio.cpp.o
src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/lattice_model/CollisionModel.cpp.o
src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/build.make
src/lbm/liblbm.a: src/lbm/CMakeFiles/lbm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library liblbm.a"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && $(CMAKE_COMMAND) -P CMakeFiles/lbm.dir/cmake_clean_target.cmake
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lbm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lbm/CMakeFiles/lbm.dir/build: src/lbm/liblbm.a
.PHONY : src/lbm/CMakeFiles/lbm.dir/build

src/lbm/CMakeFiles/lbm.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" && $(CMAKE_COMMAND) -P CMakeFiles/lbm.dir/cmake_clean.cmake
.PHONY : src/lbm/CMakeFiles/lbm.dir/clean

src/lbm/CMakeFiles/lbm.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/lbm" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/lbm/CMakeFiles/lbm.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/lbm/CMakeFiles/lbm.dir/depend

