# Sniperkit-Bot
# - Status: analyzed

set(ENV_PATH "$ENV{PATH}")
foreach(path "/does_not_exist" "" "/bin" "/sbin")
  unset(PrefixInPATH_INCLUDE_DIR CACHE)
  set(ENV{PATH} "${CMAKE_CURRENT_SOURCE_DIR}${path}")
  find_file(PrefixInPATH_INCLUDE_DIR NAMES PrefixInPATH.h)
  message(STATUS "PrefixInPATH_INCLUDE_DIR='${PrefixInPATH_INCLUDE_DIR}'")
endforeach()
set(ENV{PATH} "${ENV_PATH}")
