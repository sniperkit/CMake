# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0064 NEW)
add_test(NAME TestThatExists COMMAND ${CMAKE_COMMAND} -E echo "A CMake Test")
if(TEST TestThatExists)
  message(STATUS "if TestThatExists is true")
else()
  message(FATAL_ERROR "if TestThatExists is false")
endif()
