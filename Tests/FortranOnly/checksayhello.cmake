# Sniperkit-Bot
# - Status: analyzed

file(READ out.txt IN)
message("${IN}")
if(IN MATCHES Hello AND IN MATCHES World)
  message("Passed")
else()
  message(FATAL_ERROR "Hello world not found")
endif()
