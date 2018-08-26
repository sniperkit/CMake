# Sniperkit-Bot
# - Status: analyzed

set(CMAKE_VISIBILITY_INLINES_HIDDEN 1)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)
add_executable(myexe lib.cpp)
add_library(mystatic STATIC lib.cpp)
add_library(myshared SHARED lib.cpp)
add_library(mymodule MODULE lib.cpp)
add_library(myobject OBJECT lib.cpp)
