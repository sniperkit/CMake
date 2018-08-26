# Sniperkit-Bot
# - Status: analyzed

message("This is install script 3.")
set(INSTALL_SCRIPT_3_DID_RUN 1)
if(INSTALL_CODE_WITH_COMPONENT_DID_RUN)
  message(FATAL_ERROR "Install script 3 did not run before install code with component.")
endif()

if(CMAKE_INSTALL_COMPONENT)
if(NOT "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  message("CMAKE_INSTALL_COMPONENT=\"${CMAKE_INSTALL_COMPONENT}\"")
  message(FATAL_ERROR "Install script 3 should only run for \"Development\" INSTALL COMPONENT.")
endif()
endif()
