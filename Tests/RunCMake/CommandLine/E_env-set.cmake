# Sniperkit-Bot
# - Status: analyzed

if(DEFINED ENV{TEST_ENV})
  message(STATUS "TEST_ENV is correctly set in environment: $ENV{TEST_ENV}")
else()
  message(FATAL_ERROR "TEST_ENV is incorrectly not set in environment")
endif()
