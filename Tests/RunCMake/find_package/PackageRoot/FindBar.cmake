# Sniperkit-Bot
# - Status: analyzed

set(BAR_CMAKE_FILE ${CMAKE_CURRENT_LIST_FILE} CACHE FILEPATH "")
find_file(BAR_TEST_FILE_FOO foo.h)
find_file(BAR_TEST_FILE_BAR bar.h)
find_file(BAR_TEST_FILE_ZOT zot.h PATH_SUFFIXES zot)
find_path(BAR_TEST_PATH_FOO foo.h)
find_path(BAR_TEST_PATH_BAR bar.h)
find_path(BAR_TEST_PATH_ZOT zot.h PATH_SUFFIXES zot)
find_program(BAR_TEST_PROG_FOO foo.exe)
find_program(BAR_TEST_PROG_BAR bar.exe)
