# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0042 NEW)

add_library(foo SHARED empty.cpp)
add_library(foo-static STATIC empty.cpp)
add_library(foo2 SHARED empty.cpp)
set_target_properties(foo2 PROPERTIES MACOSX_RPATH 1)
add_library(foo3 SHARED empty.cpp)
set_target_properties(foo3 PROPERTIES BUILD_WITH_INSTALL_RPATH 1 INSTALL_NAME_DIR "@loader_path")
add_library(foo4 SHARED empty.cpp)
set_target_properties(foo4 PROPERTIES BUILD_WITH_INSTALL_RPATH 1 INSTALL_NAME_DIR "@rpath")
add_library(foo5 SHARED empty.cpp)
set_target_properties(foo5 PROPERTIES BUILD_WITH_INSTALL_RPATH 1 BUILD_WITH_INSTALL_NAME_DIR 1 INSTALL_NAME_DIR "@rpath")
