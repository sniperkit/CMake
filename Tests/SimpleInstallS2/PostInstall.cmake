# Sniperkit-Bot
# - Status: analyzed

message("In post install")
if(PRE_INSTALL_DID_RUN)
  message("Pre and post install work fine")
else()
  message(FATAL_ERROR "Pre install did not run before post install")
endif()
