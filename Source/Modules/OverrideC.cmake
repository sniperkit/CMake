# Sniperkit-Bot
# - Status: analyzed

if("${CMAKE_SYSTEM_NAME};${CMAKE_C_COMPILER_ID}" STREQUAL "AIX;GNU")
  string(APPEND CMAKE_C_FLAGS_INIT " -pthread")
endif()
