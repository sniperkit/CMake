# Sniperkit-Bot
# - Status: analyzed

if("NOT" 1)
  message(FATAL_ERROR "[\"NOT\" 1] evaluated true")
elseif("DEFINED" NotDefined)
  message(FATAL_ERROR "[\"DEFINED\" NotDefined] evaluated true")
endif()
