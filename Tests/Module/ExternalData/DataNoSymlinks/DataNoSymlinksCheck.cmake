# Sniperkit-Bot
# - Status: analyzed

if(NOT EXISTS "${Data}")
  message(SEND_ERROR "Input file:\n  ${Data}\ndoes not exist!")
endif()
if(IS_SYMLINK "${Data}")
  message(SEND_ERROR "Input file:\n  ${Data}\nis a symlink but should not be!")
endif()
