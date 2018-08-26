# Sniperkit-Bot
# - Status: analyzed

string(JOIN % out)
if(NOT out STREQUAL "")
  message(FATAL_ERROR "\"string(JOIN % out)\" set out to \"${out}\"")
endif()
string(JOIN % out a)
if(NOT out STREQUAL "a")
  message(FATAL_ERROR "\"string(JOIN % out a)\" set out to \"${out}\"")
endif()
string(JOIN % out a "b")
if(NOT out STREQUAL "a%b")
  message(FATAL_ERROR "\"string(JOIN % out a \"b\")\" set out to \"${out}\"")
endif()
string(JOIN :: out a "b")
if(NOT out STREQUAL "a::b")
  message(FATAL_ERROR "\"string(JOIN :: out a \"b\")\" set out to \"${out}\"")
endif()
