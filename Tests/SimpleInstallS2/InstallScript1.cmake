# Sniperkit-Bot
# - Status: analyzed

message("This is install script 1.")
set(INSTALL_SCRIPT_1_DID_RUN 1)
if(INSTALL_CODE_DID_RUN)
  message(FATAL_ERROR "Install script 1 did not run before install code.")
endif()
