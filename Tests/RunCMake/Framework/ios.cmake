# Sniperkit-Bot
# - Status: analyzed

set(CMAKE_SYSTEM_NAME Darwin)
set(CMAKE_SYSTEM_VERSION 1)
set(UNIX True)
set(APPLE True)

set(CMAKE_MACOSX_BUNDLE TRUE)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_REQUIRED "NO")
set(CMAKE_XCODE_ATTRIBUTE_ENABLE_BITCODE "NO")

find_program(XCRUN_EXECUTABLE xcrun)
if(NOT XCRUN_EXECUTABLE)
  message(FATAL_ERROR "xcrun not found")
endif()

execute_process(
  COMMAND ${XCRUN_EXECUTABLE} --sdk iphoneos --show-sdk-path
  OUTPUT_VARIABLE IOS_SDK_PATH
  OUTPUT_STRIP_TRAILING_WHITESPACE)

execute_process(
  COMMAND ${XCRUN_EXECUTABLE} --sdk iphoneos --show-sdk-version
  OUTPUT_VARIABLE IOS_SDK_VERSION
  OUTPUT_STRIP_TRAILING_WHITESPACE)
if(IOS_SDK_VERSION VERSION_GREATER_EQUAL 11.0)
  set(IOS_ARCH arm64)
else()
  set(IOS_ARCH armv7)
endif()

set(CMAKE_OSX_SYSROOT ${IOS_SDK_PATH} CACHE PATH "Sysroot used for iOS support")
set(CMAKE_OSX_ARCHITECTURES "${IOS_ARCH}" CACHE STRING "Architectures to build for")
set(CMAKE_FIND_ROOT_PATH ${IOS_SDK_PATH} CACHE PATH "Find search path root")
