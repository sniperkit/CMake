# Sniperkit-Bot
# - Status: analyzed

if(${RunCMake_SUBTEST_SUFFIX} MATCHES "invalid_.*_var")
  set(EXPECTED_FILES_COUNT "0")
else()
  set(EXPECTED_FILES_COUNT "1")
  set(EXPECTED_FILE_CONTENT_1_LIST "/foo;/foo/CMakeLists.txt")
endif()
