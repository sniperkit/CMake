# Sniperkit-Bot
# - Status: analyzed


set(PACK2_VAR ON)

add_library(Pack2::Lib INTERFACE IMPORTED)
set_property(TARGET Pack2::Lib PROPERTY INTERFACE_COMPILE_DEFINITIONS HAVE_PACK2)
