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
include tests/field/CMakeFiles/FlagFieldTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/field/CMakeFiles/FlagFieldTest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/field/CMakeFiles/FlagFieldTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/field/CMakeFiles/FlagFieldTest.dir/flags.make

tests/field/CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o: tests/field/CMakeFiles/FlagFieldTest.dir/flags.make
tests/field/CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o: ../tests/field/FlagFieldTest.cpp
tests/field/CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o: tests/field/CMakeFiles/FlagFieldTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/field/CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/field/CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o -MF CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o.d -o CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/field/FlagFieldTest.cpp"

tests/field/CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/field/FlagFieldTest.cpp" > CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.i

tests/field/CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/field/FlagFieldTest.cpp" -o CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.s

# Object files for target FlagFieldTest
FlagFieldTest_OBJECTS = \
"CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o"

# External object files for target FlagFieldTest
FlagFieldTest_EXTERNAL_OBJECTS =

tests/field/FlagFieldTest: tests/field/CMakeFiles/FlagFieldTest.dir/FlagFieldTest.cpp.o
tests/field/FlagFieldTest: tests/field/CMakeFiles/FlagFieldTest.dir/build.make
tests/field/FlagFieldTest: src/field/libfield.a
tests/field/FlagFieldTest: src/field/libfield.a
tests/field/FlagFieldTest: src/field/libfield.a
tests/field/FlagFieldTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/field/FlagFieldTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/field/FlagFieldTest: src/vtk/libvtk.a
tests/field/FlagFieldTest: src/blockforest/libblockforest.a
tests/field/FlagFieldTest: src/domain_decomposition/libdomain_decomposition.a
tests/field/FlagFieldTest: src/core/libcore.a
tests/field/FlagFieldTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/field/FlagFieldTest: tests/field/CMakeFiles/FlagFieldTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FlagFieldTest"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FlagFieldTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/field/CMakeFiles/FlagFieldTest.dir/build: tests/field/FlagFieldTest
.PHONY : tests/field/CMakeFiles/FlagFieldTest.dir/build

tests/field/CMakeFiles/FlagFieldTest.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && $(CMAKE_COMMAND) -P CMakeFiles/FlagFieldTest.dir/cmake_clean.cmake
.PHONY : tests/field/CMakeFiles/FlagFieldTest.dir/clean

tests/field/CMakeFiles/FlagFieldTest.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/field" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field/CMakeFiles/FlagFieldTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/field/CMakeFiles/FlagFieldTest.dir/depend

