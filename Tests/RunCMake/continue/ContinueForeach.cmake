# Sniperkit-Bot
# - Status: analyzed

message(STATUS "start")
foreach(iter RANGE 1 5)
  if("${iter}" EQUAL 1 OR "${iter}" EQUAL 3 OR "${iter}" EQUAL 5)
    continue()
  endif()
  message(STATUS "${iter}")
endforeach()
message(STATUS "end")
