# Sniperkit-Bot
# - Status: analyzed

macro(m)
  message(STATUS "  start m")
  foreach(i 1 2)
    message(STATUS "   start loop body")
    message(SEND_ERROR "error in loop body")
    message(STATUS "   end loop body")
  endforeach()
  message(STATUS "  end m")
endmacro()

function(f)
  message(STATUS " start f")
  m()
  message(STATUS " end f")
endfunction()

message(STATUS "before f")
f()
message(STATUS "after f")
