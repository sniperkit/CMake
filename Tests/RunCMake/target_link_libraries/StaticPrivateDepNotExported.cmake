# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0022 NEW)
enable_language(C)
add_library(foo STATIC empty.c)
add_library(not_exported STATIC empty.c)
target_link_libraries(foo PRIVATE not_exported)
install(TARGETS foo EXPORT Exp DESTINATION lib)
install(EXPORT Exp DESTINATION lib/cmake/Exp)
