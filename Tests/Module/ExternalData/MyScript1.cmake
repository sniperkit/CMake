# Sniperkit-Bot
# - Status: analyzed

if(ExternalData_CUSTOM_LOCATION STREQUAL "MD5/fd95c03719e8626c0d10a818f9996dc5")
  file(WRITE "${ExternalData_CUSTOM_FILE}" "DataScript")
else()
  set(ExternalData_CUSTOM_ERROR "no ${ExternalData_CUSTOM_LOCATION} known")
endif()
