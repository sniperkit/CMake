# Sniperkit-Bot
# - Status: analyzed

if(DEFINED ENV{TEST_ENV})
  message(FATAL_ERROR "TEST_ENV is incorrectly set in environment")
else()
  message(STATUS "TEST_ENV is correctly not set in environment")
endif()
