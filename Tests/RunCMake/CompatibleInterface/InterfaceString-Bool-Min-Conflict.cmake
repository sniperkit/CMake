# Sniperkit-Bot
# - Status: analyzed


add_library(foo UNKNOWN IMPORTED)

set_property(TARGET foo APPEND PROPERTY COMPATIBLE_INTERFACE_BOOL OTHER)
set_property(TARGET foo APPEND PROPERTY COMPATIBLE_INTERFACE_STRING OTHER)
set_property(TARGET foo APPEND PROPERTY COMPATIBLE_INTERFACE_NUMBER_MIN OTHER)

add_executable(user main.cpp)
target_link_libraries(user foo)
