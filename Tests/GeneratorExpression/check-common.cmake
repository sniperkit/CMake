# Sniperkit-Bot
# - Status: analyzed

function(check var val)
  if(NOT "${${var}}" STREQUAL "${val}")
    message(SEND_ERROR "${var} is \"${${var}}\", not \"${val}\"")
  endif()
endfunction()
