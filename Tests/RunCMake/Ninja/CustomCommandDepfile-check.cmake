# Sniperkit-Bot
# - Status: analyzed

set(log "${RunCMake_BINARY_DIR}/CustomCommandDepfile-build/build.ninja")
file(READ "${log}" build_file)
if(NOT "${build_file}" MATCHES "depfile = test\\.d")
  set(RunCMake_TEST_FAILED "Log file:\n ${log}\ndoes not have expected line: depfile = test.d")
endif()
