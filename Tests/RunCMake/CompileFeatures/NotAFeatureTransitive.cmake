# Sniperkit-Bot
# - Status: analyzed


add_library(iface INTERFACE)
set_property(TARGET iface PROPERTY INTERFACE_COMPILE_FEATURES "not_a_feature")

add_library(somelib STATIC empty.cpp)
target_link_libraries(somelib iface)
