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
include tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/progress.make

# Include the compile flags for this target's objects.
include tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/flags.make

tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o: tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/flags.make
tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o: ../tests/pe/PeDocumentationSnippets.cpp
tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o: tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o -MF CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o.d -o CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o -c "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe/PeDocumentationSnippets.cpp"

tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.i"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe/PeDocumentationSnippets.cpp" > CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.i

tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.s"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe/PeDocumentationSnippets.cpp" -o CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.s

# Object files for target PE_DOCUMENTATIONSNIPPETS
PE_DOCUMENTATIONSNIPPETS_OBJECTS = \
"CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o"

# External object files for target PE_DOCUMENTATIONSNIPPETS
PE_DOCUMENTATIONSNIPPETS_EXTERNAL_OBJECTS =

tests/pe/PE_DOCUMENTATIONSNIPPETS: tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/PeDocumentationSnippets.cpp.o
tests/pe/PE_DOCUMENTATIONSNIPPETS: tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/build.make
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/core/libcore.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/pe/libpe.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/core/libcore.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/pe/libpe.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/core/libcore.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/pe/libpe.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe/PE_DOCUMENTATIONSNIPPETS: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/geometry/libgeometry.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/boundary/libboundary.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/field/libfield.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/vtk/libvtk.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/blockforest/libblockforest.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/domain_decomposition/libdomain_decomposition.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: src/core/libcore.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
tests/pe/PE_DOCUMENTATIONSNIPPETS: extern/lodepng/liblodepng.a
tests/pe/PE_DOCUMENTATIONSNIPPETS: tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PE_DOCUMENTATIONSNIPPETS"
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/build: tests/pe/PE_DOCUMENTATIONSNIPPETS
.PHONY : tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/build

tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/clean:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe" && $(CMAKE_COMMAND) -P CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/cmake_clean.cmake
.PHONY : tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/clean

tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/depend:
	cd "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/pe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/pe/CMakeFiles/PE_DOCUMENTATIONSNIPPETS.dir/depend

