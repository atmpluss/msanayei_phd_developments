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
include src/vtk/CMakeFiles/vtk.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/vtk/CMakeFiles/vtk.dir/compiler_depend.make

# Include the progress variables for this target.
include src/vtk/CMakeFiles/vtk.dir/progress.make

# Include the compile flags for this target's objects.
include src/vtk/CMakeFiles/vtk.dir/flags.make

src/vtk/CMakeFiles/vtk.dir/Base64Writer.cpp.o: src/vtk/CMakeFiles/vtk.dir/flags.make
src/vtk/CMakeFiles/vtk.dir/Base64Writer.cpp.o: ../src/vtk/Base64Writer.cpp
src/vtk/CMakeFiles/vtk.dir/Base64Writer.cpp.o: src/vtk/CMakeFiles/vtk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/vtk/CMakeFiles/vtk.dir/Base64Writer.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/vtk/CMakeFiles/vtk.dir/Base64Writer.cpp.o -MF CMakeFiles/vtk.dir/Base64Writer.cpp.o.d -o CMakeFiles/vtk.dir/Base64Writer.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/Base64Writer.cpp"

src/vtk/CMakeFiles/vtk.dir/Base64Writer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtk.dir/Base64Writer.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/Base64Writer.cpp" > CMakeFiles/vtk.dir/Base64Writer.cpp.i

src/vtk/CMakeFiles/vtk.dir/Base64Writer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtk.dir/Base64Writer.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/Base64Writer.cpp" -o CMakeFiles/vtk.dir/Base64Writer.cpp.s

src/vtk/CMakeFiles/vtk.dir/Initialization.cpp.o: src/vtk/CMakeFiles/vtk.dir/flags.make
src/vtk/CMakeFiles/vtk.dir/Initialization.cpp.o: ../src/vtk/Initialization.cpp
src/vtk/CMakeFiles/vtk.dir/Initialization.cpp.o: src/vtk/CMakeFiles/vtk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/vtk/CMakeFiles/vtk.dir/Initialization.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/vtk/CMakeFiles/vtk.dir/Initialization.cpp.o -MF CMakeFiles/vtk.dir/Initialization.cpp.o.d -o CMakeFiles/vtk.dir/Initialization.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/Initialization.cpp"

src/vtk/CMakeFiles/vtk.dir/Initialization.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtk.dir/Initialization.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/Initialization.cpp" > CMakeFiles/vtk.dir/Initialization.cpp.i

src/vtk/CMakeFiles/vtk.dir/Initialization.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtk.dir/Initialization.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/Initialization.cpp" -o CMakeFiles/vtk.dir/Initialization.cpp.s

src/vtk/CMakeFiles/vtk.dir/VTKOutput.cpp.o: src/vtk/CMakeFiles/vtk.dir/flags.make
src/vtk/CMakeFiles/vtk.dir/VTKOutput.cpp.o: ../src/vtk/VTKOutput.cpp
src/vtk/CMakeFiles/vtk.dir/VTKOutput.cpp.o: src/vtk/CMakeFiles/vtk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/vtk/CMakeFiles/vtk.dir/VTKOutput.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/vtk/CMakeFiles/vtk.dir/VTKOutput.cpp.o -MF CMakeFiles/vtk.dir/VTKOutput.cpp.o.d -o CMakeFiles/vtk.dir/VTKOutput.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/VTKOutput.cpp"

src/vtk/CMakeFiles/vtk.dir/VTKOutput.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtk.dir/VTKOutput.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/VTKOutput.cpp" > CMakeFiles/vtk.dir/VTKOutput.cpp.i

src/vtk/CMakeFiles/vtk.dir/VTKOutput.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtk.dir/VTKOutput.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk/VTKOutput.cpp" -o CMakeFiles/vtk.dir/VTKOutput.cpp.s

# Object files for target vtk
vtk_OBJECTS = \
"CMakeFiles/vtk.dir/Base64Writer.cpp.o" \
"CMakeFiles/vtk.dir/Initialization.cpp.o" \
"CMakeFiles/vtk.dir/VTKOutput.cpp.o"

# External object files for target vtk
vtk_EXTERNAL_OBJECTS =

src/vtk/libvtk.a: src/vtk/CMakeFiles/vtk.dir/Base64Writer.cpp.o
src/vtk/libvtk.a: src/vtk/CMakeFiles/vtk.dir/Initialization.cpp.o
src/vtk/libvtk.a: src/vtk/CMakeFiles/vtk.dir/VTKOutput.cpp.o
src/vtk/libvtk.a: src/vtk/CMakeFiles/vtk.dir/build.make
src/vtk/libvtk.a: src/vtk/CMakeFiles/vtk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libvtk.a"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && $(CMAKE_COMMAND) -P CMakeFiles/vtk.dir/cmake_clean_target.cmake
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/vtk/CMakeFiles/vtk.dir/build: src/vtk/libvtk.a
.PHONY : src/vtk/CMakeFiles/vtk.dir/build

src/vtk/CMakeFiles/vtk.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" && $(CMAKE_COMMAND) -P CMakeFiles/vtk.dir/cmake_clean.cmake
.PHONY : src/vtk/CMakeFiles/vtk.dir/clean

src/vtk/CMakeFiles/vtk.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/src/vtk" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/src/vtk/CMakeFiles/vtk.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/vtk/CMakeFiles/vtk.dir/depend

