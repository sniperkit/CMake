# Sniperkit-Bot
# - Status: analyzed

if(IS_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/")
  message(STATUS "CMAKE_CURRENT_SOURCE_DIR exists, tested with trailing slash")
else()
  message(FATAL_ERROR "CMAKE_CURRENT_SOURCE_DIR does not exist!")
endif()
