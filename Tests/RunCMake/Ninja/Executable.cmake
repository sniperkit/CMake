# Sniperkit-Bot
# - Status: analyzed

cmake_minimum_required(VERSION 3.5)
project(hello C)
add_executable(hello hello.c)
include(CheckOutput.cmake)
include(CheckNoPrefixSubDir.cmake)
