# Sniperkit-Bot
# - Status: analyzed

if(__COMPILER_GHS)
  return()
endif()
set(__COMPILER_GHS 1)

set(CMAKE_EXECUTABLE_SUFFIX ".as")
set(CMAKE_LIBRARY_PATH_TERMINATOR "\n")
set(CMAKE_LIBRARY_PATH_FLAG "  -L")
