# Sniperkit-Bot
# - Status: analyzed

function(f)
  g(${ARGN})
endfunction()
macro(g)
  message(${ARGN})
endmacro()
f(message)
