# Sniperkit-Bot
# - Status: analyzed

set(PACKAGE_VERSION 1.12345)
if(PACKAGE_FIND_VERSION_MAJOR EQUAL 1)
  set(PACKAGE_VERSION_COMPATIBLE 1)
  if(PACKAGE_FIND_VERSION_MINOR EQUAL 12345)
    set(PACKAGE_VERSION_EXACT 1)
  endif()
endif()
