# Sniperkit-Bot
# - Status: analyzed

set(f "${RunCMake_TEST_BINARY_DIR}/CTestTestfile.cmake")
if(NOT EXISTS "${f}")
  set(RunCMake_TEST_FAILED "File does not exist:\n  ${f}")
endif()
file(READ ${f} content)
if(NOT "${content}" MATCHES "^# Created manually")
  set(RunCMake_TEST_FAILED "File:\n  ${f}\nhas unexpected content:\n  ${content}")
endif()
