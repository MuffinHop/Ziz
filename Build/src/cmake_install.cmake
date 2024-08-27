# Install script for directory: /Users/sofia.savilampi/Downloads/CToy-master/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/sofia.savilampi/Downloads/CToy-master/bin")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL" TYPE EXECUTABLE FILES "/Users/sofia.savilampi/Downloads/CToy-master/Build/src/CToy")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/MTCL/CToy" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/MTCL/CToy")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/MTCL/CToy")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/sofia.savilampi/Downloads/CToy-master/Build/src/CMakeFiles/CToy.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL" TYPE EXECUTABLE FILES "/Users/sofia.savilampi/Downloads/CToy-master/Build/src/CToy_player")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/MTCL/CToy_player" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/MTCL/CToy_player")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/MTCL/CToy_player")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/sofia.savilampi/Downloads/CToy-master/Build/src/CMakeFiles/CToy_player.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL" TYPE FILE FILES "/Users/sofia.savilampi/Downloads/CToy-master/src/../3rdparty/libtcc/osx/libtcc.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL" TYPE FILE FILES "/Users/sofia.savilampi/Downloads/CToy-master/src/../3rdparty/libtcc/osx/libtcc1.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL" TYPE DIRECTORY FILES "/Users/sofia.savilampi/Downloads/CToy-master/src/../ressources/data")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL" TYPE DIRECTORY FILES "/Users/sofia.savilampi/Downloads/CToy-master/src/../ressources/include")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL" TYPE DIRECTORY FILES "/Users/sofia.savilampi/Downloads/CToy-master/src/../ressources/src")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL" TYPE DIRECTORY FILES "/Users/sofia.savilampi/Downloads/CToy-master/src/../ressources/tool")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL/tool/build_native/src" TYPE FILE FILES
    "/Users/sofia.savilampi/Downloads/CToy-master/src/../src/ctoy.c"
    "/Users/sofia.savilampi/Downloads/CToy-master/src/../src/ctoy.h"
    "/Users/sofia.savilampi/Downloads/CToy-master/src/../src/ctoy_srgb.h"
    "/Users/sofia.savilampi/Downloads/CToy-master/src/../src/m_dist.h"
    "/Users/sofia.savilampi/Downloads/CToy-master/src/../src/m_image.h"
    "/Users/sofia.savilampi/Downloads/CToy-master/src/../src/m_math.h"
    "/Users/sofia.savilampi/Downloads/CToy-master/src/../src/m_path_finding.h"
    "/Users/sofia.savilampi/Downloads/CToy-master/src/../src/m_raster.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/MTCL/tool/build_native" TYPE DIRECTORY FILES "/Users/sofia.savilampi/Downloads/CToy-master/src/../3rdparty")
endif()

