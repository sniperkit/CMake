# Sniperkit-Bot
# - Status: analyzed

set(xcProjectFile "${RunCMake_TEST_BINARY_DIR}/ExplicitCMakeLists.xcodeproj/project.pbxproj")
if(NOT EXISTS "${xcProjectFile}")
  set(RunCMake_TEST_FAILED "Project file ${xcProjectFile} does not exist.")
  return()
endif()

set(foundCMakeLists 0)
file(STRINGS "${xcProjectFile}" lines)
foreach(line IN LISTS lines)
  if(line MATCHES "PBXBuildFile.*fileRef.*CMakeLists.txt")
    if(foundCMakeLists)
      set(RunCMake_TEST_FAILED "CMakeLists.txt referenced multiple times")
      return()
    endif()
    set(foundCMakeLists 1)
  endif()
endforeach()
if(NOT foundCMakeLists)
  set(RunCMake_TEST_FAILED "CMakeLists.txt not referenced")
endif()
