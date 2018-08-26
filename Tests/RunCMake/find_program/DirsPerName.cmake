# Sniperkit-Bot
# - Status: analyzed

find_program(PROG
  NAMES testB testA
  PATHS ${CMAKE_CURRENT_SOURCE_DIR}/A ${CMAKE_CURRENT_SOURCE_DIR}/B
  NO_DEFAULT_PATH
  )
message(STATUS "PROG='${PROG}'")

find_program(PROG_ABS
  NAMES ${CMAKE_CURRENT_SOURCE_DIR}/A/testA
  NO_DEFAULT_PATH
  )
message(STATUS "PROG_ABS='${PROG_ABS}'")
