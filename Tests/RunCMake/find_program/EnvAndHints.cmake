# Sniperkit-Bot
# - Status: analyzed

set(ENV_PATH "$ENV{PATH}")
set(ENV{PATH} ${CMAKE_CURRENT_SOURCE_DIR}/A)
find_program(PROG
  NAMES testAandB
  HINTS ${CMAKE_CURRENT_SOURCE_DIR}/A ${CMAKE_CURRENT_SOURCE_DIR}/B
  )
message(STATUS "PROG='${PROG}'")
set(ENV{PATH} "${ENV_PATH}")
