# Sniperkit-Bot
# - Status: analyzed

if(NOT IS_SYMLINK ${RunCMake_TEST_BINARY_DIR}/L)
  set(RunCMake_TEST_FAILED "Symlink 'L' incorrectly not created!")
endif()
if(EXISTS ${RunCMake_TEST_BINARY_DIR}/L)
  set(RunCMake_TEST_FAILED "Symlink 'L' not broken!")
endif()
