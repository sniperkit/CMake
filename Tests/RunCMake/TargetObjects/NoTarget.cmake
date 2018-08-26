# Sniperkit-Bot
# - Status: analyzed

add_library(iface INTERFACE)
target_sources(iface INTERFACE $<TARGET_OBJECTS:NoTarget>)

file(GENERATE OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/test_output CONTENT $<TARGET_OBJECTS:NoTarget>)
file(GENERATE OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/test_output2 CONTENT $<TARGET_PROPERTY:iface,INTERFACE_SOURCES>)

install(FILES $<TARGET_OBJECTS:NoTarget> DESTINATION objects)
