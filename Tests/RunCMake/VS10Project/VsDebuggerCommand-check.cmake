# Sniperkit-Bot
# - Status: analyzed

set(vcProjectFile "${RunCMake_TEST_BINARY_DIR}/foo.vcxproj")
if(NOT EXISTS "${vcProjectFile}")
  set(RunCMake_TEST_FAILED "Project file ${vcProjectFile} does not exist.")
  return()
endif()

set(debuggerCommandSet FALSE)

file(STRINGS "${vcProjectFile}" lines)
foreach(line IN LISTS lines)
  if(line MATCHES "^ *<LocalDebuggerCommand[^>]*>([^<>]+)</LocalDebuggerCommand>$")
    if("${CMAKE_MATCH_1}" STREQUAL "my-debugger-command")
        message(STATUS "foo.vcxproj has debugger command set")
        set(debuggerCommandSet TRUE)
    endif()
  endif()
endforeach()

if(NOT debuggerCommandSet)
  set(RunCMake_TEST_FAILED "LocalDebuggerCommand not found or not set correctly.")
  return()
endif()
