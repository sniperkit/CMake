# Sniperkit-Bot
# - Status: analyzed

include(Platform/UnixPaths)

set(CMAKE_C_CREATE_STATIC_LIBRARY
  "<CMAKE_AR> cr <TARGET> <LINK_FLAGS> <OBJECTS>"
  "<CMAKE_RANLIB> <TARGET>"
  )
set(CMAKE_CXX_CREATE_STATIC_LIBRARY ${CMAKE_C_CREATE_STATIC_LIBRARY})
set(CMAKE_EXECUTABLE_SUFFIX ".exe")          # .exe
