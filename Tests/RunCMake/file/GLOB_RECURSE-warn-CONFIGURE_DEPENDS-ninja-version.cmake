# Sniperkit-Bot
# - Status: analyzed

file(MAKE_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/test/first")
file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/test/first/one" "one")
file(GLOB_RECURSE CONTENT_LIST
  CONFIGURE_DEPENDS
  "${CMAKE_CURRENT_BINARY_DIR}/test/*"
  )
