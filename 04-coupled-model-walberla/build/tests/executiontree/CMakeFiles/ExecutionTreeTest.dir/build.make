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
include tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/flags.make

tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o: tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/flags.make
tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o: ../tests/executiontree/ExecutionTreeTest.cpp
tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o: tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/executiontree" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o -MF CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o.d -o CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/executiontree/ExecutionTreeTest.cpp"

tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/executiontree" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/executiontree/ExecutionTreeTest.cpp" > CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.i

tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/executiontree" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/executiontree/ExecutionTreeTest.cpp" -o CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.s

# Object files for target ExecutionTreeTest
ExecutionTreeTest_OBJECTS = \
"CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o"

# External object files for target ExecutionTreeTest
ExecutionTreeTest_EXTERNAL_OBJECTS =

tests/executiontree/ExecutionTreeTest: tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/ExecutionTreeTest.cpp.o
tests/executiontree/ExecutionTreeTest: tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/build.make
tests/executiontree/ExecutionTreeTest: src/executiontree/libexecutiontree.a
tests/executiontree/ExecutionTreeTest: src/executiontree/libexecutiontree.a
tests/executiontree/ExecutionTreeTest: src/executiontree/libexecutiontree.a
tests/executiontree/ExecutionTreeTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/executiontree/ExecutionTreeTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/executiontree/ExecutionTreeTest: src/timeloop/libtimeloop.a
tests/executiontree/ExecutionTreeTest: src/domain_decomposition/libdomain_decomposition.a
tests/executiontree/ExecutionTreeTest: src/core/libcore.a
tests/executiontree/ExecutionTreeTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/executiontree/ExecutionTreeTest: tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ExecutionTreeTest"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/executiontree" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ExecutionTreeTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/build: tests/executiontree/ExecutionTreeTest
.PHONY : tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/build

tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/executiontree" && $(CMAKE_COMMAND) -P CMakeFiles/ExecutionTreeTest.dir/cmake_clean.cmake
.PHONY : tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/clean

tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/executiontree" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/executiontree" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/executiontree/CMakeFiles/ExecutionTreeTest.dir/depend

