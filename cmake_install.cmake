# Install script for directory: C:/cantata/srcming

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/cantata/install3")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/cantata.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3" TYPE EXECUTABLE FILES "C:/cantata/srcming/cantata.exe")
  if(EXISTS "$ENV{DESTDIR}/C:/cantata/install3/cantata.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/C:/cantata/install3/cantata.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/dev/Qt/Tools/mingw530_32/bin/strip.exe" "$ENV{DESTDIR}/C:/cantata/install3/cantata.exe")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/cantata/srcming/tags/cmake_install.cmake")
  include("C:/cantata/srcming/windows/cmake_install.cmake")
  include("C:/cantata/srcming/3rdparty/qxt/cmake_install.cmake")
  include("C:/cantata/srcming/3rdparty/kcategorizedview/cmake_install.cmake")
  include("C:/cantata/srcming/3rdparty/qtsingleapplication/cmake_install.cmake")
  include("C:/cantata/srcming/translations/cmake_install.cmake")
  include("C:/cantata/srcming/support/cmake_install.cmake")
  include("C:/cantata/srcming/3rdparty/qtiocompressor/cmake_install.cmake")
  include("C:/cantata/srcming/streams/icons/cmake_install.cmake")
  include("C:/cantata/srcming/online/icons/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/cantata/srcming/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
