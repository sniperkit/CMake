# Sniperkit-Bot
# - Status: analyzed

function(foo)
  foreach(i RANGE 1 3)
    foreach(j RANGE 1 3)
      return()
      message(FATAL_ERROR "unexpected")
    endforeach()
  endforeach()
endfunction(foo)

foo()
