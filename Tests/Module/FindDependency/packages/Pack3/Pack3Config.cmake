# Sniperkit-Bot
# - Status: analyzed


set(PACK3_VAR ON)

add_library(Pack3::Lib INTERFACE IMPORTED)
set_property(TARGET Pack3::Lib PROPERTY INTERFACE_COMPILE_DEFINITIONS HAVE_PACK3)
