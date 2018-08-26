# Sniperkit-Bot
# - Status: analyzed

set(vcProjectFile "${RunCMake_TEST_BINARY_DIR}/foo.vcxproj")
if(NOT EXISTS "${vcProjectFile}")
  set(RunCMake_TEST_FAILED "Project file ${vcProjectFile} does not exist.")
  return()
endif()

set(importFound FALSE)

set(props_file "${RunCMake_SOURCE_DIR}/my.props")
file(TO_NATIVE_PATH "${props_file}" check_file)
file(STRINGS "${vcProjectFile}" lines)
foreach(line IN LISTS lines)
  if(line MATCHES "^ *<Import Project=\"([^\"]+)\".*Label=\"([^\"]+)\".*$")
    if("${CMAKE_MATCH_1}" STREQUAL "${check_file}" AND
       "${CMAKE_MATCH_2}" STREQUAL "LocalAppDataPlatform")
        message(STATUS "foo.vcxproj is importing ${check_file}")
        set(importFound TRUE)
    endif()
  endif()
endforeach()

if(NOT importFound)
  set(RunCMake_TEST_FAILED "Import of custom .props file not found.")
  return()
endif()
