# Sniperkit-Bot
# - Status: analyzed

set(EXPECTED_FILES_COUNT "3")
set(EXPECTED_FILES_NAME_GENERATOR_SPECIFIC_FORMAT TRUE)
set(EXPECTED_FILE_1_COMPONENT "pkg_1")
set(EXPECTED_FILE_CONTENT_1_LIST "/foo;/foo/CMakeLists.txt")
set(EXPECTED_FILE_2_NAME "second")
set(EXPECTED_FILE_CONTENT_2_LIST "/foo;/foo/CMakeLists.txt")
set(EXPECTED_FILE_CONTENT_3_LIST "/foo;/foo/CMakeLists.txt")

if(GENERATOR_TYPE STREQUAL "DEB" OR GENERATOR_TYPE STREQUAL "RPM")
  string(TOLOWER "${GENERATOR_TYPE}" file_extension_)
  set(EXPECTED_FILE_3 "pkg_3_abc.${file_extension_}")
elseif(GENERATOR_TYPE STREQUAL "TGZ")
  set(EXPECTED_FILE_2 "second.tar.gz")
  set(EXPECTED_FILE_3 "pkg_3_abc.tar.gz")
endif()
