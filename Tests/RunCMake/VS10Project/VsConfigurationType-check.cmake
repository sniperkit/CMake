# Sniperkit-Bot
# - Status: analyzed

set(vcProjectFile "${RunCMake_TEST_BINARY_DIR}/foo.vcxproj")
if(NOT EXISTS "${vcProjectFile}")
  set(RunCMake_TEST_FAILED "Project file ${vcProjectFile} does not exist.")
  return()
endif()

set(propertyFound FALSE)
file(STRINGS "${vcProjectFile}" lines)
foreach(line IN LISTS lines)
  if(line MATCHES "^ *<ConfigurationType>(.*)</ConfigurationType>$")
    set(propertyFound TRUE)
    set(expectedValue "MyValue")
    set(actualValue ${CMAKE_MATCH_1})
    if(NOT (${actualValue} STREQUAL ${expectedValue}))
      set(RunCMake_TEST_FAILED "ConfigurationType \"${actualValue}\" differs from expected value \"${expectedValue}\".")
      return()
    endif()
  endif()
endforeach()

if(NOT propertyFound)
  set(RunCMake_TEST_FAILED "Property ConfigurationType not found in project file.")
  return()
endif()
