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
include src/CMakeFiles/CToy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/CToy.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/CToy.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/CToy.dir/flags.make

src/CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o: src/CMakeFiles/CToy.dir/flags.make
src/CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o: /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/glad/src/glad.c
src/CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o: src/CMakeFiles/CToy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o -MF CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o.d -o CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o -c /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/glad/src/glad.c

src/CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/glad/src/glad.c > CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.i

src/CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/glad/src/glad.c -o CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.s

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o: src/CMakeFiles/CToy.dir/flags.make
src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o: /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/device.c
src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o: src/CMakeFiles/CToy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o -MF CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o.d -o CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o -c /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/device.c

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/device.c > CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.i

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/device.c -o CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.s

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o: src/CMakeFiles/CToy.dir/flags.make
src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o: /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/tcp.c
src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o: src/CMakeFiles/CToy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o -MF CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o.d -o CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o -c /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/tcp.c

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/tcp.c > CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.i

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/tcp.c -o CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.s

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o: src/CMakeFiles/CToy.dir/flags.make
src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o: /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/track.c
src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o: src/CMakeFiles/CToy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o -MF CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o.d -o CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o -c /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/track.c

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/track.c > CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.i

src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/3rdparty/gnurocket/source/track.c -o CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.s

src/CMakeFiles/CToy.dir/ctoy_tcc.c.o: src/CMakeFiles/CToy.dir/flags.make
src/CMakeFiles/CToy.dir/ctoy_tcc.c.o: /Users/sofia.savilampi/Downloads/CToy-master/src/ctoy_tcc.c
src/CMakeFiles/CToy.dir/ctoy_tcc.c.o: src/CMakeFiles/CToy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/CMakeFiles/CToy.dir/ctoy_tcc.c.o"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/CToy.dir/ctoy_tcc.c.o -MF CMakeFiles/CToy.dir/ctoy_tcc.c.o.d -o CMakeFiles/CToy.dir/ctoy_tcc.c.o -c /Users/sofia.savilampi/Downloads/CToy-master/src/ctoy_tcc.c

src/CMakeFiles/CToy.dir/ctoy_tcc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/CToy.dir/ctoy_tcc.c.i"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/sofia.savilampi/Downloads/CToy-master/src/ctoy_tcc.c > CMakeFiles/CToy.dir/ctoy_tcc.c.i

src/CMakeFiles/CToy.dir/ctoy_tcc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/CToy.dir/ctoy_tcc.c.s"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/sofia.savilampi/Downloads/CToy-master/src/ctoy_tcc.c -o CMakeFiles/CToy.dir/ctoy_tcc.c.s

# Object files for target CToy
CToy_OBJECTS = \
"CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o" \
"CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o" \
"CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o" \
"CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o" \
"CMakeFiles/CToy.dir/ctoy_tcc.c.o"

# External object files for target CToy
CToy_EXTERNAL_OBJECTS =

src/CToy: src/CMakeFiles/CToy.dir/__/3rdparty/glad/src/glad.c.o
src/CToy: src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/device.c.o
src/CToy: src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/tcp.c.o
src/CToy: src/CMakeFiles/CToy.dir/__/3rdparty/gnurocket/source/track.c.o
src/CToy: src/CMakeFiles/CToy.dir/ctoy_tcc.c.o
src/CToy: src/CMakeFiles/CToy.dir/build.make
src/CToy: 3rdparty/glfw/src/libglfw3.a
src/CToy: 3rdparty/tinycthread/libtinycthread.a
src/CToy: src/CMakeFiles/CToy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/sofia.savilampi/Downloads/CToy-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable CToy"
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CToy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/CToy.dir/build: src/CToy
.PHONY : src/CMakeFiles/CToy.dir/build

src/CMakeFiles/CToy.dir/clean:
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build/src && $(CMAKE_COMMAND) -P CMakeFiles/CToy.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/CToy.dir/clean

src/CMakeFiles/CToy.dir/depend:
	cd /Users/sofia.savilampi/Downloads/CToy-master/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sofia.savilampi/Downloads/CToy-master /Users/sofia.savilampi/Downloads/CToy-master/src /Users/sofia.savilampi/Downloads/CToy-master/Build /Users/sofia.savilampi/Downloads/CToy-master/Build/src /Users/sofia.savilampi/Downloads/CToy-master/Build/src/CMakeFiles/CToy.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/CToy.dir/depend

