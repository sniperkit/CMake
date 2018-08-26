# Sniperkit-Bot
# - Status: analyzed


set(PACKAGE_VERSION "4.3")

if("${PACKAGE_VERSION}" VERSION_LESS "${PACKAGE_FIND_VERSION}" )
  set(PACKAGE_VERSION_COMPATIBLE FALSE)
else()
  set(PACKAGE_VERSION_COMPATIBLE TRUE)
  if( "${PACKAGE_FIND_VERSION}" STREQUAL "${PACKAGE_VERSION}")
    set(PACKAGE_VERSION_EXACT TRUE)
  endif()
endif()
