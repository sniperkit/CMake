# Sniperkit-Bot
# - Status: analyzed

add_library(MyTarget INTERFACE IMPORTED)
set_property(TARGET MyTarget PROPERTY IMPORTED_LIBNAME -flag)
set_property(TARGET MyTarget PROPERTY IMPORTED_LIBNAME item1 item2)
set_property(TARGET MyTarget PROPERTY IMPORTED_LIBNAME /path/to/item1)
set_property(TARGET MyTarget PROPERTY IMPORTED_LIBNAME \\path\\to\\item1)
set_property(TARGET MyTarget PROPERTY IMPORTED_LIBNAME c:\\path\\to\\item1)
