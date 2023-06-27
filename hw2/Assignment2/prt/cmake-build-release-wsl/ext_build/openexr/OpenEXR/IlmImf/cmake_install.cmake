# Install script for directory: /mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/cmake-build-release-wsl/ext_build/openexr/OpenEXR/IlmImf/libIlmImf.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenEXR" TYPE FILE FILES
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfForward.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfExport.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfBoxAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfCRgbaFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelList.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelListAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompressionAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDoubleAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfFrameBuffer.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfHeader.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfIO.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfIntAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrderAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMatrixAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfOpaqueAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfVecAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfHuf.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfWav.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfLut.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfArray.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompression.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrder.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfName.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPixelType.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfVersion.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfXdr.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfConvert.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImage.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImageAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticities.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticitiesAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCode.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCodeAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCode.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCodeAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRational.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRationalAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfFramesPerSecond.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfStandardAttributes.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmap.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmapAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfInt64.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgba.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescription.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescriptionAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledRgbaFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaYca.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTestFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfThreading.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfB44Compressor.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringVectorAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiView.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfAcesFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartOutputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericOutputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartInputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericInputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartType.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartHelper.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputPart.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputPart.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputPart.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputPart.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputPart.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputPart.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputPart.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputFile.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputPart.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepFrameBuffer.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepCompositing.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompositeDeepScanLine.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfNamespace.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMisc.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageState.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageStateAttribute.h"
    "/mnt/e/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatVectorAttribute.h"
    )
endif()

