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
include tests/core/CMakeFiles/ConcatIterator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/core/CMakeFiles/ConcatIterator.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/core/CMakeFiles/ConcatIterator.dir/progress.make

# Include the compile flags for this target's objects.
include tests/core/CMakeFiles/ConcatIterator.dir/flags.make

tests/core/CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o: tests/core/CMakeFiles/ConcatIterator.dir/flags.make
tests/core/CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o: ../tests/core/ConcatIterator.cpp
tests/core/CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o: tests/core/CMakeFiles/ConcatIterator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/core/CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/core/CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o -MF CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o.d -o CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/core/ConcatIterator.cpp"

tests/core/CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/core/ConcatIterator.cpp" > CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.i

tests/core/CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/core/ConcatIterator.cpp" -o CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.s

# Object files for target ConcatIterator
ConcatIterator_OBJECTS = \
"CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o"

# External object files for target ConcatIterator
ConcatIterator_EXTERNAL_OBJECTS =

tests/core/ConcatIterator: tests/core/CMakeFiles/ConcatIterator.dir/ConcatIterator.cpp.o
tests/core/ConcatIterator: tests/core/CMakeFiles/ConcatIterator.dir/build.make
tests/core/ConcatIterator: src/core/libcore.a
tests/core/ConcatIterator: src/core/libcore.a
tests/core/ConcatIterator: src/core/libcore.a
tests/core/ConcatIterator: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/core/ConcatIterator: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/core/ConcatIterator: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/core/ConcatIterator: tests/core/CMakeFiles/ConcatIterator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ConcatIterator"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ConcatIterator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/core/CMakeFiles/ConcatIterator.dir/build: tests/core/ConcatIterator
.PHONY : tests/core/CMakeFiles/ConcatIterator.dir/build

tests/core/CMakeFiles/ConcatIterator.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && $(CMAKE_COMMAND) -P CMakeFiles/ConcatIterator.dir/cmake_clean.cmake
.PHONY : tests/core/CMakeFiles/ConcatIterator.dir/clean

tests/core/CMakeFiles/ConcatIterator.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/core" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core/CMakeFiles/ConcatIterator.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/core/CMakeFiles/ConcatIterator.dir/depend

