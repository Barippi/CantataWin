# Install script for directory: C:/cantata/srcming/windows

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
   "C:/cantata/install3/cantata.nsi;C:/cantata/install3/cantata.ico;C:/cantata/install3/LICENSE.txt;C:/cantata/install3/Cantata README.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3" TYPE FILE FILES
    "C:/cantata/srcming/windows/cantata.nsi"
    "C:/cantata/srcming/windows/cantata.ico"
    "C:/cantata/srcming/windows/LICENSE.txt"
    "C:/cantata/srcming/windows/Cantata README.txt"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/imageformats/qjpeg.dll;C:/cantata/install3/imageformats/qsvg.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3/imageformats" TYPE FILE FILES
    "C:/dev/Qt/5.11.2/mingw53_32/plugins/imageformats/qjpeg.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/plugins/imageformats/qsvg.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/iconengines/qsvgicon.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3/iconengines" TYPE FILE FILES "C:/dev/Qt/5.11.2/mingw53_32/plugins/iconengines/qsvgicon.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/platforms/qwindows.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3/platforms" TYPE FILE FILES "C:/dev/Qt/5.11.2/mingw53_32/plugins/platforms/qwindows.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/sqldrivers/qsqlite.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3/sqldrivers" TYPE FILE FILES "C:/dev/Qt/5.11.2/mingw53_32/plugins/sqldrivers/qsqlite.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/mediaservice/dsengine.dll;C:/cantata/install3/mediaservice/qtmedia_audioengine.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3/mediaservice" TYPE FILE FILES
    "C:/dev/Qt/5.11.2/mingw53_32/plugins/mediaservice/dsengine.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/plugins/mediaservice/qtmedia_audioengine.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/translations/qt_ar.qm;C:/cantata/install3/translations/qt_bg.qm;C:/cantata/install3/translations/qt_ca.qm;C:/cantata/install3/translations/qt_cs.qm;C:/cantata/install3/translations/qt_da.qm;C:/cantata/install3/translations/qt_de.qm;C:/cantata/install3/translations/qt_en.qm;C:/cantata/install3/translations/qt_es.qm;C:/cantata/install3/translations/qt_fa.qm;C:/cantata/install3/translations/qt_fi.qm;C:/cantata/install3/translations/qt_fr.qm;C:/cantata/install3/translations/qt_gd.qm;C:/cantata/install3/translations/qt_gl.qm;C:/cantata/install3/translations/qt_he.qm;C:/cantata/install3/translations/qt_hu.qm;C:/cantata/install3/translations/qt_it.qm;C:/cantata/install3/translations/qt_ja.qm;C:/cantata/install3/translations/qt_ko.qm;C:/cantata/install3/translations/qt_lt.qm;C:/cantata/install3/translations/qt_lv.qm;C:/cantata/install3/translations/qt_pl.qm;C:/cantata/install3/translations/qt_pt.qm;C:/cantata/install3/translations/qt_ru.qm;C:/cantata/install3/translations/qt_sk.qm;C:/cantata/install3/translations/qt_sl.qm;C:/cantata/install3/translations/qt_sv.qm;C:/cantata/install3/translations/qt_uk.qm;C:/cantata/install3/translations/qt_zh_CN.qm;C:/cantata/install3/translations/qt_zh_TW.qm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3/translations" TYPE FILE FILES
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_ar.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_bg.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_ca.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_cs.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_da.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_de.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_en.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_es.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_fa.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_fi.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_fr.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_gd.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_gl.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_he.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_hu.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_it.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_ja.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_ko.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_lt.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_lv.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_pl.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_pt.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_ru.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_sk.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_sl.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_sv.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_uk.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_zh_CN.qm"
    "C:/dev/Qt/5.11.2/mingw53_32/translations/qt_zh_TW.qm"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/Qt5Core.dll;C:/cantata/install3/Qt5Gui.dll;C:/cantata/install3/Qt5Network.dll;C:/cantata/install3/Qt5Svg.dll;C:/cantata/install3/Qt5Xml.dll;C:/cantata/install3/Qt5Widgets.dll;C:/cantata/install3/Qt5WinExtras.dll;C:/cantata/install3/Qt5Sql.dll;C:/cantata/install3/libgcc_s_dw2-1.dll;C:/cantata/install3/libstdc++-6.dll;C:/cantata/install3/libwinpthread-1.dll;C:/cantata/install3/libz-1.dll;C:/cantata/install3/libtag.dll;C:/cantata/install3/Qt5Multimedia.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3" TYPE FILE FILES
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5Core.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5Gui.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5Network.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5Svg.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5Xml.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5Widgets.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5WinExtras.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5Sql.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/libgcc_s_dw2-1.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/libstdc++-6.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/libwinpthread-1.dll"
    "C:/dev/zlib/include/../bin/libz-1.dll"
    "C:/dev/taglib/include/../bin/libtag.dll"
    "C:/dev/Qt/5.11.2/mingw53_32/bin/Qt5Multimedia.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/Cantata License (GPL V3).txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3" TYPE FILE RENAME "Cantata License (GPL V3).txt" FILES "C:/cantata/srcming/windows/LICENSE.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/cantata/install3/icons/cantata.png")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/cantata/install3/icons" TYPE FILE RENAME "cantata.png" FILES "C:/cantata/srcming/windows/../icons/cantata32.png")
endif()

