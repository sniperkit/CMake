# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)

run_cmake(CMP0037-OLD-space)
run_cmake(CMP0037-NEW-space)
run_cmake(CMP0037-WARN-space)
run_cmake(CMP0037-NEW-colon)

if(NOT (WIN32 AND "${RunCMake_GENERATOR}" MATCHES "Make"))
  run_cmake(CMP0037-WARN-colon)
endif()

run_cmake(CMP0037-WARN-reserved)
run_cmake(CMP0037-OLD-reserved)
run_cmake(CMP0037-NEW-reserved)

run_cmake(NEW-cond)
run_cmake(NEW-cond-test)
run_cmake(NEW-cond-package)
run_cmake(OLD-cond)
run_cmake(OLD-cond-test)
run_cmake(OLD-cond-package)
run_cmake(WARN-cond)
run_cmake(WARN-cond-test)
run_cmake(WARN-cond-package)

if(RunCMake_GENERATOR MATCHES "Make|Ninja")
  run_cmake(NEW-cond-package_source)
  run_cmake(OLD-cond-package_source)
  run_cmake(WARN-cond-package_source)
endif()
