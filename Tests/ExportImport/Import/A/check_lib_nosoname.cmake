# Sniperkit-Bot
# - Status: analyzed

execute_process(COMMAND ${readelf} -d ${lib} OUTPUT_FILE ${lib}.readelf.txt)
file(STRINGS ${lib}.readelf.txt soname REGEX "SONAME")
if(soname)
  message(FATAL_ERROR "${lib} has soname but should not:\n  ${soname}")
else()
  message(STATUS "${lib} has no soname as expected:\n  ${soname}")
endif()
