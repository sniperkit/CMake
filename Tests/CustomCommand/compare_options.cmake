# Sniperkit-Bot
# - Status: analyzed

set(range 1 2 3 4 5 6 7 8 9 10)
set(aargs "")
set(bargs "")
foreach(n IN LISTS range)
  set(aval "${A${n}ARG}")
  set(bval "${B${n}ARG}")
  if(aval OR bval)
    list(APPEND aargs "\"${aval}\"")
    list(APPEND bargs "\"${bval}\"")
  endif()
endforeach()
if(NOT "${aargs}" STREQUAL "${bargs}")
  message(FATAL_ERROR "COMPARE_OPTIONS: \n\t${aargs} != \n\t${bargs}")
endif()
