# Sniperkit-Bot
# - Status: analyzed

set(src ${CMAKE_CURRENT_SOURCE_DIR}/from)
set(dst ${CMAKE_CURRENT_BINARY_DIR}/from)
file(REMOVE RECURSE ${dst})
message(STATUS "Before Installing")
file(INSTALL FILES a.txt a/b.txt a/b/c.txt FILES_FROM_DIR ${src} DESTINATION ${dst})
file(INSTALL FILES a.txt a/b.txt a/b/c.txt FILES_FROM_DIR from DESTINATION ${dst})
message(STATUS "After Installing")
