# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)

run_cmake(ContinueAfterError)
run_cmake(CustomTargetAfterError)
run_cmake(ErrorLogs)
run_cmake(FailCopyFileABI)

# Use a single build tree for a few tests without cleaning.
set(RunCMake_TEST_BINARY_DIR ${RunCMake_BINARY_DIR}/RerunCMake-build)
set(RunCMake_TEST_NO_CLEAN 1)
file(REMOVE_RECURSE "${RunCMake_TEST_BINARY_DIR}")
file(MAKE_DIRECTORY "${RunCMake_TEST_BINARY_DIR}")
set(input  "${RunCMake_TEST_BINARY_DIR}/CustomCMakeInput.txt")
set(stamp  "${RunCMake_TEST_BINARY_DIR}/CustomCMakeStamp.txt")
set(depend "${RunCMake_TEST_BINARY_DIR}/CustomCMakeDepend.txt")
set(output "${RunCMake_TEST_BINARY_DIR}/CustomCMakeOutput.txt")
file(WRITE "${input}" "1")
file(WRITE "${depend}" "1")
run_cmake(RerunCMake)
execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 1) # handle 1s resolution
file(WRITE "${input}" "2")
run_cmake_command(RerunCMake-build1 ${CMAKE_COMMAND} --build .)
file(WRITE "${depend}" "2")
run_cmake_command(RerunCMake-build2 ${CMAKE_COMMAND} --build .)
unset(RunCMake_TEST_BINARY_DIR)
unset(RunCMake_TEST_NO_CLEAN)

# Use a single build tree for a few tests without cleaning.
set(RunCMake_TEST_BINARY_DIR ${RunCMake_BINARY_DIR}/RemoveCache-build)
set(RunCMake_TEST_NO_CLEAN 1)
file(REMOVE_RECURSE "${RunCMake_TEST_BINARY_DIR}")
file(MAKE_DIRECTORY "${RunCMake_TEST_BINARY_DIR}")
run_cmake(RemoveCache)
file(REMOVE "${RunCMake_TEST_BINARY_DIR}/CMakeCache.txt")
run_cmake(RemoveCache)
