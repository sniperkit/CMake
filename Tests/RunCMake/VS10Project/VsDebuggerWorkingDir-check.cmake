# Sniperkit-Bot
# - Status: analyzed

set(vcProjectFile "${RunCMake_TEST_BINARY_DIR}/foo.vcxproj")
if(NOT EXISTS "${vcProjectFile}")
  set(RunCMake_TEST_FAILED "Project file ${vcProjectFile} does not exist.")
  return()
endif()

set(debuggerWorkDirSet FALSE)

file(STRINGS "${vcProjectFile}" lines)
foreach(line IN LISTS lines)
  if(line MATCHES "^ *<LocalDebuggerWorkingDirectory[^>]*>([^<>]+)</LocalDebuggerWorkingDirectory>$")
    if("${CMAKE_MATCH_1}" STREQUAL "my-debugger-directory")
        message(STATUS "foo.vcxproj has debugger working dir set")
        set(debuggerWorkDirSet TRUE)
    endif()
  endif()
endforeach()

if(NOT debuggerWorkDirSet)
  set(RunCMake_TEST_FAILED "LocalDebuggerWorkingDirectory not found or not set correctly.")
  return()
endif()
