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
include tests/core/CMakeFiles/CheckMacroTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/core/CMakeFiles/CheckMacroTest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/core/CMakeFiles/CheckMacroTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/core/CMakeFiles/CheckMacroTest.dir/flags.make

tests/core/CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o: tests/core/CMakeFiles/CheckMacroTest.dir/flags.make
tests/core/CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o: ../tests/core/debug/CheckMacroTest.cpp
tests/core/CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o: tests/core/CMakeFiles/CheckMacroTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/core/CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/core/CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o -MF CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o.d -o CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/core/debug/CheckMacroTest.cpp"

tests/core/CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/core/debug/CheckMacroTest.cpp" > CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.i

tests/core/CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/core/debug/CheckMacroTest.cpp" -o CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.s

# Object files for target CheckMacroTest
CheckMacroTest_OBJECTS = \
"CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o"

# External object files for target CheckMacroTest
CheckMacroTest_EXTERNAL_OBJECTS =

tests/core/CheckMacroTest: tests/core/CMakeFiles/CheckMacroTest.dir/debug/CheckMacroTest.cpp.o
tests/core/CheckMacroTest: tests/core/CMakeFiles/CheckMacroTest.dir/build.make
tests/core/CheckMacroTest: src/core/libcore.a
tests/core/CheckMacroTest: src/core/libcore.a
tests/core/CheckMacroTest: src/core/libcore.a
tests/core/CheckMacroTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/core/CheckMacroTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/core/CheckMacroTest: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/core/CheckMacroTest: tests/core/CMakeFiles/CheckMacroTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CheckMacroTest"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CheckMacroTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/core/CMakeFiles/CheckMacroTest.dir/build: tests/core/CheckMacroTest
.PHONY : tests/core/CMakeFiles/CheckMacroTest.dir/build

tests/core/CMakeFiles/CheckMacroTest.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" && $(CMAKE_COMMAND) -P CMakeFiles/CheckMacroTest.dir/cmake_clean.cmake
.PHONY : tests/core/CMakeFiles/CheckMacroTest.dir/clean

tests/core/CMakeFiles/CheckMacroTest.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/core" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/core/CMakeFiles/CheckMacroTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/core/CMakeFiles/CheckMacroTest.dir/depend

