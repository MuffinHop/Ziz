# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sofia.savilampi/Downloads/CToy-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sofia.savilampi/Downloads/CToy-master/Build

# Include any dependencies generated for this target.
include ressources/CMakeFiles/cimgui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ressources/CMakeFiles/cimgui.dir/compiler_depend.make

# Include the progress variables for this target.
include ressources/CMakeFiles/cimgui.dir/progress.make

# Include the compile flags for this target's objects.
include ressources/CMakeFiles/cimgui.dir/flags.make

ressources/CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o: ressources/CMakeFiles/cimgui.dir/flags.make
ressources/CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o: /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/cimgui.cpp
ressources/CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o: ressources/CMakeFiles/cimgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ressources/CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ressources/CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o -MF CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o.d -o CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o -c /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/cimgui.cpp

ressources/CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/cimgui.cpp > CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.i

ressources/CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/cimgui.cpp -o CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.s

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o: ressources/CMakeFiles/cimgui.dir/flags.make
ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o: /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui.cpp
ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o: ressources/CMakeFiles/cimgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o -MF CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o.d -o CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o -c /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui.cpp

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui.cpp > CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.i

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui.cpp -o CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.s

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o: ressources/CMakeFiles/cimgui.dir/flags.make
ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o: /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui_draw.cpp
ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o: ressources/CMakeFiles/cimgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o -MF CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o.d -o CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o -c /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui_draw.cpp

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui_draw.cpp > CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.i

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui_draw.cpp -o CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.s

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o: ressources/CMakeFiles/cimgui.dir/flags.make
ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o: /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui_widgets.cpp
ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o: ressources/CMakeFiles/cimgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o -MF CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o -c /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui_widgets.cpp

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui_widgets.cpp > CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.i

ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/ressources/src/cimgui/imgui/imgui_widgets.cpp -o CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.s

# Object files for target cimgui
cimgui_OBJECTS = \
"CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o" \
"CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o" \
"CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o" \
"CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o"

# External object files for target cimgui
cimgui_EXTERNAL_OBJECTS =

ressources/libcimgui.dylib: ressources/CMakeFiles/cimgui.dir/src/cimgui/cimgui.cpp.o
ressources/libcimgui.dylib: ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui.cpp.o
ressources/libcimgui.dylib: ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_draw.cpp.o
ressources/libcimgui.dylib: ressources/CMakeFiles/cimgui.dir/src/cimgui/imgui/imgui_widgets.cpp.o
ressources/libcimgui.dylib: ressources/CMakeFiles/cimgui.dir/build.make
ressources/libcimgui.dylib: ressources/CMakeFiles/cimgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libcimgui.dylib"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cimgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ressources/CMakeFiles/cimgui.dir/build: ressources/libcimgui.dylib
.PHONY : ressources/CMakeFiles/cimgui.dir/build

ressources/CMakeFiles/cimgui.dir/clean:
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources && $(CMAKE_COMMAND) -P CMakeFiles/cimgui.dir/cmake_clean.cmake
.PHONY : ressources/CMakeFiles/cimgui.dir/clean

ressources/CMakeFiles/cimgui.dir/depend:
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sofia.savilampi/Downloads/CToy-master /Users/sofia.savilampi/Downloads/CToy-master/ressources /Users/sofia.savilampi/Downloads/CToy-master/Build /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources /Users/sofia.savilampi/Downloads/CToy-master/Build/ressources/CMakeFiles/cimgui.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : ressources/CMakeFiles/cimgui.dir/depend

