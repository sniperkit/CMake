# Sniperkit-Bot
# - Status: analyzed

function (watch_callback)
  message("called")
endfunction ()

variable_watch(test watch_callback)
message("-->${test}<--")
