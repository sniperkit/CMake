# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0064 NEW)
if(TEST TestThatDoesNotExist)
  message(FATAL_ERROR "if TestThatDoesNotExist is true")
else()
  message(STATUS "if TestThatDoesNotExist is false")
endif()
