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
include src/executiontree/CMakeFiles/executiontree.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/executiontree/CMakeFiles/executiontree.dir/compiler_depend.make

# Include the progress variables for this target.
include src/executiontree/CMakeFiles/executiontree.dir/progress.make

# Include the compile flags for this target's objects.
include src/executiontree/CMakeFiles/executiontree.dir/flags.make

src/executiontree/CMakeFiles/executiontree.dir/ExecutionTree.cpp.o: src/executiontree/CMakeFiles/executiontree.dir/flags.make
src/executiontree/CMakeFiles/executiontree.dir/ExecutionTree.cpp.o: ../src/executiontree/ExecutionTree.cpp
src/executiontree/CMakeFiles/executiontree.dir/ExecutionTree.cpp.o: src/executiontree/CMakeFiles/executiontree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/executiontree/CMakeFiles/executiontree.dir/ExecutionTree.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/executiontree" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/executiontree/CMakeFiles/executiontree.dir/ExecutionTree.cpp.o -MF CMakeFiles/executiontree.dir/ExecutionTree.cpp.o.d -o CMakeFiles/executiontree.dir/ExecutionTree.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/executiontree/ExecutionTree.cpp"

src/executiontree/CMakeFiles/executiontree.dir/ExecutionTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/executiontree.dir/ExecutionTree.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/executiontree" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/executiontree/ExecutionTree.cpp" > CMakeFiles/executiontree.dir/ExecutionTree.cpp.i

src/executiontree/CMakeFiles/executiontree.dir/ExecutionTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/executiontree.dir/ExecutionTree.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/executiontree" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/executiontree/ExecutionTree.cpp" -o CMakeFiles/executiontree.dir/ExecutionTree.cpp.s

# Object files for target executiontree
executiontree_OBJECTS = \
"CMakeFiles/executiontree.dir/ExecutionTree.cpp.o"

# External object files for target executiontree
executiontree_EXTERNAL_OBJECTS =

src/executiontree/libexecutiontree.a: src/executiontree/CMakeFiles/executiontree.dir/ExecutionTree.cpp.o
src/executiontree/libexecutiontree.a: src/executiontree/CMakeFiles/executiontree.dir/build.make
src/executiontree/libexecutiontree.a: src/executiontree/CMakeFiles/executiontree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libexecutiontree.a"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/executiontree" && $(CMAKE_COMMAND) -P CMakeFiles/executiontree.dir/cmake_clean_target.cmake
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/executiontree" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/executiontree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/executiontree/CMakeFiles/executiontree.dir/build: src/executiontree/libexecutiontree.a
.PHONY : src/executiontree/CMakeFiles/executiontree.dir/build

src/executiontree/CMakeFiles/executiontree.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/executiontree" && $(CMAKE_COMMAND) -P CMakeFiles/executiontree.dir/cmake_clean.cmake
.PHONY : src/executiontree/CMakeFiles/executiontree.dir/clean

src/executiontree/CMakeFiles/executiontree.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/executiontree" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/executiontree" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/executiontree/CMakeFiles/executiontree.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/executiontree/CMakeFiles/executiontree.dir/depend

