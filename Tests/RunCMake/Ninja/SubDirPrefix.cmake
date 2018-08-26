# Sniperkit-Bot
# - Status: analyzed

cmake_minimum_required(VERSION 3.5)
project(hello C)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/bin")
add_subdirectory(SubDirPrefix)
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
add_executable(hello hello_sub_greeting.c)
target_link_libraries(hello greeting)
include(CheckOutput.cmake)
