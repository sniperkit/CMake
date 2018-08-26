# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)
include(${CMAKE_CURRENT_LIST_DIR}/solution_parsing.cmake)

run_cmake(OnePre)
run_cmake(OnePost)
run_cmake(MorePre)
run_cmake(MorePost)
run_cmake(PrePost)
run_cmake(Override1)
run_cmake(Override2)
run_cmake(Override3)
run_cmake(StartupProject)
run_cmake(StartupProjectMissing)
run_cmake(AddPackageToDefault)

if(NOT NO_USE_FOLDERS)
  run_cmake(StartupProjectUseFolders)
endif()
