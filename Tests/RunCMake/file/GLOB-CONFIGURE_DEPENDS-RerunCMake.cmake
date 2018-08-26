# Sniperkit-Bot
# - Status: analyzed

message(STATUS "Running CMake on GLOB-CONFIGURE_DEPENDS-RerunCMake")
file(GLOB_RECURSE
  CONTENT_LIST
  CONFIGURE_DEPENDS
  LIST_DIRECTORIES false
  RELATIVE "${CMAKE_CURRENT_BINARY_DIR}"
  "${CMAKE_CURRENT_BINARY_DIR}/test/*"
  )
string(SHA1 CONTENT_LIST_HASH "${CONTENT_LIST}")
add_custom_target(CONTENT_ECHO ALL ${CMAKE_COMMAND} -E echo ${CONTENT_LIST_HASH})
