# Sniperkit-Bot
# - Status: analyzed

set(EXPECTED_FILES_COUNT "5")
set(EXPECTED_FILE_1_COMPONENT "applications")
set(EXPECTED_FILE_CONTENT_1_LIST "/foo;/foo/test_prog")
set(EXPECTED_FILE_2_COMPONENT "applications_auto")
set(EXPECTED_FILE_CONTENT_2_LIST "/foo_auto;/foo_auto/test_prog")
set(EXPECTED_FILE_3_COMPONENT "headers")
set(EXPECTED_FILE_CONTENT_3_LIST "/bar;/bar/CMakeLists.txt")
set(EXPECTED_FILE_4_COMPONENT "libs")
set(EXPECTED_FILE_CONTENT_4_LIST "/bas;/bas/libtest_lib.so")
set(EXPECTED_FILE_5_COMPONENT "libs_auto")
set(EXPECTED_FILE_CONTENT_5_LIST "/bas_auto;/bas_auto/libtest_lib.so")

if(GENERATOR_TYPE STREQUAL "DEB")
  set(whitespaces_ "[\t\n\r ]*")
  # dynamic lib extension is .so on Linux and .dylib on Mac so we will use a wildcard .* for it
  set(EXPECTED_FILE_CONTENT_4 "^.*/usr/bas${whitespaces_}.*/usr/bas/libtest_lib\\..*$")
  set(EXPECTED_FILE_CONTENT_5 "^.*/usr/bas_auto${whitespaces_}.*/usr/bas_auto/libtest_lib\\..*$")
endif()
