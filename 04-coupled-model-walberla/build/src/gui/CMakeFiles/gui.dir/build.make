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
include src/gui/CMakeFiles/gui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/gui/CMakeFiles/gui.dir/compiler_depend.make

# Include the progress variables for this target.
include src/gui/CMakeFiles/gui.dir/progress.make

# Include the compile flags for this target's objects.
include src/gui/CMakeFiles/gui.dir/flags.make

src/gui/CMakeFiles/gui.dir/PropertyTree.cpp.o: src/gui/CMakeFiles/gui.dir/flags.make
src/gui/CMakeFiles/gui.dir/PropertyTree.cpp.o: ../src/gui/PropertyTree.cpp
src/gui/CMakeFiles/gui.dir/PropertyTree.cpp.o: src/gui/CMakeFiles/gui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/gui/CMakeFiles/gui.dir/PropertyTree.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/gui/CMakeFiles/gui.dir/PropertyTree.cpp.o -MF CMakeFiles/gui.dir/PropertyTree.cpp.o.d -o CMakeFiles/gui.dir/PropertyTree.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/gui/PropertyTree.cpp"

src/gui/CMakeFiles/gui.dir/PropertyTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gui.dir/PropertyTree.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/gui/PropertyTree.cpp" > CMakeFiles/gui.dir/PropertyTree.cpp.i

src/gui/CMakeFiles/gui.dir/PropertyTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gui.dir/PropertyTree.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/gui/PropertyTree.cpp" -o CMakeFiles/gui.dir/PropertyTree.cpp.s

src/gui/CMakeFiles/gui.dir/Gui.cpp.o: src/gui/CMakeFiles/gui.dir/flags.make
src/gui/CMakeFiles/gui.dir/Gui.cpp.o: ../src/gui/Gui.cpp
src/gui/CMakeFiles/gui.dir/Gui.cpp.o: src/gui/CMakeFiles/gui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/gui/CMakeFiles/gui.dir/Gui.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/gui/CMakeFiles/gui.dir/Gui.cpp.o -MF CMakeFiles/gui.dir/Gui.cpp.o.d -o CMakeFiles/gui.dir/Gui.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/gui/Gui.cpp"

src/gui/CMakeFiles/gui.dir/Gui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gui.dir/Gui.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/gui/Gui.cpp" > CMakeFiles/gui.dir/Gui.cpp.i

src/gui/CMakeFiles/gui.dir/Gui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gui.dir/Gui.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/gui/Gui.cpp" -o CMakeFiles/gui.dir/Gui.cpp.s

# Object files for target gui
gui_OBJECTS = \
"CMakeFiles/gui.dir/PropertyTree.cpp.o" \
"CMakeFiles/gui.dir/Gui.cpp.o"

# External object files for target gui
gui_EXTERNAL_OBJECTS =

src/gui/libgui.a: src/gui/CMakeFiles/gui.dir/PropertyTree.cpp.o
src/gui/libgui.a: src/gui/CMakeFiles/gui.dir/Gui.cpp.o
src/gui/libgui.a: src/gui/CMakeFiles/gui.dir/build.make
src/gui/libgui.a: src/gui/CMakeFiles/gui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libgui.a"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && $(CMAKE_COMMAND) -P CMakeFiles/gui.dir/cmake_clean_target.cmake
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/gui/CMakeFiles/gui.dir/build: src/gui/libgui.a
.PHONY : src/gui/CMakeFiles/gui.dir/build

src/gui/CMakeFiles/gui.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" && $(CMAKE_COMMAND) -P CMakeFiles/gui.dir/cmake_clean.cmake
.PHONY : src/gui/CMakeFiles/gui.dir/clean

src/gui/CMakeFiles/gui.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/gui" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/gui/CMakeFiles/gui.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/gui/CMakeFiles/gui.dir/depend
