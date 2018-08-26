# Sniperkit-Bot
# - Status: analyzed

execute_process(COMMAND ${readelf} -d ${lib} OUTPUT_FILE ${lib}.readelf.txt)
file(STRINGS ${lib}.readelf.txt soname REGEX "SONAME")
if(soname)
  message(STATUS "${lib} has soname as expected:\n  ${soname}")
else()
  message(FATAL_ERROR "${lib} has no soname but should:\n  ${soname}")
endif()
