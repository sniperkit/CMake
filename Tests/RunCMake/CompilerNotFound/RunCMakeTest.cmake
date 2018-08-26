# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)

if("${RunCMake_GENERATOR}" MATCHES "Visual Studio|Xcode")
  run_cmake(NoCompilerC-IDE)
  run_cmake(NoCompilerCXX-IDE)
  run_cmake(NoCompilerCandCXX-IDE)
elseif(RunCMake_GENERATOR STREQUAL "NMake Makefiles")
  set(RunCMake-stderr-file BadCompilerC-stderr-NMake.txt)
  run_cmake(BadCompilerC)
  set(RunCMake-stderr-file BadCompilerCXX-stderr-NMake.txt)
  run_cmake(BadCompilerCXX)
  set(RunCMake-stderr-file BadCompilerCandCXX-stderr-NMake.txt)
  run_cmake(BadCompilerCandCXX)
elseif(RunCMake_GENERATOR STREQUAL "NMake Makefiles JOM")
  set(RunCMake-stderr-file BadCompilerC-stderr-JOM.txt)
  run_cmake(BadCompilerC)
  set(RunCMake-stderr-file BadCompilerCXX-stderr-JOM.txt)
  run_cmake(BadCompilerCXX)
  set(RunCMake-stderr-file BadCompilerCandCXX-stderr-JOM.txt)
  run_cmake(BadCompilerCandCXX)
else()
  run_cmake(BadCompilerC)
  run_cmake(BadCompilerCXX)
  run_cmake(BadCompilerCandCXX)
endif()
