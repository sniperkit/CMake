# Sniperkit-Bot
# - Status: analyzed

foreach(output IN ITEMS output1 output2 output3 output4)
  if(NOT EXISTS "${RunCMake_TEST_BINARY_DIR}/${output}")
    message(FATAL_ERROR "Failed to create output: ${RunCMake_TEST_BINARY_DIR}/${output}")
  endif()
endforeach()
