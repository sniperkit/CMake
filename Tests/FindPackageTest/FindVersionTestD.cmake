# Sniperkit-Bot
# - Status: analyzed

if(NOT "${VersionTestD_FIND_VERSION}" STREQUAL "1.2.3.4")
  message(SEND_ERROR "VersionTestD_FIND_VERSION=${VersionTestD_FIND_VERSION} is not 1.2.3.4")
endif()
if(NOT "${VersionTestD_FIND_VERSION_MAJOR}" STREQUAL "1")
  message(SEND_ERROR "VersionTestD_FIND_VERSION_MAJOR=${VersionTestD_FIND_VERSION_MAJOR} is not 1")
endif()
if(NOT "${VersionTestD_FIND_VERSION_MINOR}" STREQUAL "2")
  message(SEND_ERROR "VersionTestD_FIND_VERSION_MINOR=${VersionTestD_FIND_VERSION_MINOR} is not 2")
endif()
if(NOT "${VersionTestD_FIND_VERSION_PATCH}" STREQUAL "3")
  message(SEND_ERROR "VersionTestD_FIND_VERSION_PATCH=${VersionTestD_FIND_VERSION_PATCH} is not 3")
endif()
if(NOT "${VersionTestD_FIND_VERSION_TWEAK}" STREQUAL "4")
  message(SEND_ERROR "VersionTestD_FIND_VERSION_TWEAK=${VersionTestD_FIND_VERSION_TWEAK} is not 4")
endif()
if(NOT "${VersionTestD_FIND_VERSION_COUNT}" STREQUAL "4")
  message(SEND_ERROR "VersionTestD_FIND_VERSION_COUNT=${VersionTestD_FIND_VERSION_COUNT} is not 4")
endif()
