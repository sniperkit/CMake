# Sniperkit-Bot
# - Status: analyzed


add_library(picon UNKNOWN IMPORTED)
set_property(TARGET picon PROPERTY INTERFACE_POSITION_INDEPENDENT_CODE ON)

add_library(picoff UNKNOWN IMPORTED)
set_property(TARGET picoff PROPERTY INTERFACE_POSITION_INDEPENDENT_CODE OFF)

add_executable(conflict "main.cpp")
target_link_libraries(conflict picon picoff)
