# Sniperkit-Bot
# - Status: analyzed

set(csProjectFile "${RunCMake_TEST_BINARY_DIR}/foo.csproj")
if(NOT EXISTS "${csProjectFile}")
  set(RunCMake_TEST_FAILED "Project file ${csProjectFile} does not exist.")
  return()
endif()
