# Sniperkit-Bot
# - Status: analyzed

add_library(MyTarget INTERFACE)
set_property(TARGET MyTarget PROPERTY IMPORTED_LIBNAME item1)
set_property(TARGET MyTarget APPEND PROPERTY IMPORTED_LIBNAME item2)
set_property(TARGET MyTarget PROPERTY IMPORTED_LIBNAME_DEBUG item1)
set_property(TARGET MyTarget APPEND PROPERTY IMPORTED_LIBNAME_DEBUG item2)
