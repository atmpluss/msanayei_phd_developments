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
include tests/field/CMakeFiles/FieldTiming.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/field/CMakeFiles/FieldTiming.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/field/CMakeFiles/FieldTiming.dir/progress.make

# Include the compile flags for this target's objects.
include tests/field/CMakeFiles/FieldTiming.dir/flags.make

tests/field/CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o: tests/field/CMakeFiles/FieldTiming.dir/flags.make
tests/field/CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o: ../tests/field/FieldTiming.cpp
tests/field/CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o: tests/field/CMakeFiles/FieldTiming.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/field/CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/field/CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o -MF CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o.d -o CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/field/FieldTiming.cpp"

tests/field/CMakeFiles/FieldTiming.dir/FieldTiming.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FieldTiming.dir/FieldTiming.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/field/FieldTiming.cpp" > CMakeFiles/FieldTiming.dir/FieldTiming.cpp.i

tests/field/CMakeFiles/FieldTiming.dir/FieldTiming.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FieldTiming.dir/FieldTiming.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/field/FieldTiming.cpp" -o CMakeFiles/FieldTiming.dir/FieldTiming.cpp.s

# Object files for target FieldTiming
FieldTiming_OBJECTS = \
"CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o"

# External object files for target FieldTiming
FieldTiming_EXTERNAL_OBJECTS =

tests/field/FieldTiming: tests/field/CMakeFiles/FieldTiming.dir/FieldTiming.cpp.o
tests/field/FieldTiming: tests/field/CMakeFiles/FieldTiming.dir/build.make
tests/field/FieldTiming: src/field/libfield.a
tests/field/FieldTiming: src/field/libfield.a
tests/field/FieldTiming: src/field/libfield.a
tests/field/FieldTiming: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/field/FieldTiming: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/field/FieldTiming: src/vtk/libvtk.a
tests/field/FieldTiming: src/blockforest/libblockforest.a
tests/field/FieldTiming: src/domain_decomposition/libdomain_decomposition.a
tests/field/FieldTiming: src/core/libcore.a
tests/field/FieldTiming: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/field/FieldTiming: tests/field/CMakeFiles/FieldTiming.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FieldTiming"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FieldTiming.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/field/CMakeFiles/FieldTiming.dir/build: tests/field/FieldTiming
.PHONY : tests/field/CMakeFiles/FieldTiming.dir/build

tests/field/CMakeFiles/FieldTiming.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" && $(CMAKE_COMMAND) -P CMakeFiles/FieldTiming.dir/cmake_clean.cmake
.PHONY : tests/field/CMakeFiles/FieldTiming.dir/clean

tests/field/CMakeFiles/FieldTiming.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/field" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/field/CMakeFiles/FieldTiming.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/field/CMakeFiles/FieldTiming.dir/depend

