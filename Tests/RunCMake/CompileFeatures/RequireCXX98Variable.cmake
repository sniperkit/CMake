# Sniperkit-Bot
# - Status: analyzed


set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
add_library(foo empty.cpp)
set_property(TARGET foo PROPERTY CXX_STANDARD 98)
set_property(TARGET foo PROPERTY CXX_EXTENSIONS FALSE)
