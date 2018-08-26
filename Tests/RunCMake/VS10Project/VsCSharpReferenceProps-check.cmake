# Sniperkit-Bot
# - Status: analyzed

set(csProjectFile "${RunCMake_TEST_BINARY_DIR}/foo.csproj")
if(NOT EXISTS "${csProjectFile}")
  set(RunCMake_TEST_FAILED "Project file ${csProjectFile} does not exist.")
  return()
endif()

set(test1Reference "System")
set(test1Tag "Hello")
set(test1Value "World")

set(test2Reference "foo2")
set(test2Tag "Hallo")
set(test2Value "Welt")

set(tag1Found FALSE)
set(ref1Found FALSE)

file(STRINGS "${csProjectFile}" lines)

foreach(i 1 2)
  set(testReference "${test${i}Reference}")
  set(testTag "${test${i}Tag}")
  set(testValue "${test${i}Value}")
  foreach(line IN LISTS lines)
    if(line MATCHES "^ *<(Project|)Reference .*>$")
      set(validTag FALSE)
      if(line MATCHES "^ *<(Project|)Reference .*\".*${testReference}.*\".*>$")
        set(validTag TRUE)
        message(STATUS "foo.csproj is using reference ${testReference}")
        set(ref${i}Found TRUE)
      endif()
    endif()
    if(line MATCHES "^ *<${testTag}>${testValue}</${testTag}>$")
      if(validTag)
        message(STATUS "foo.csproj reference ${testReference} has tag ${testTag}")
        set(tag${i}Found TRUE)
      else()
        message(STATUS "tag ${testTag} found in wrong place!")
        set(tag${i}Found FALSE)
      endif()
    endif()
  endforeach()
endforeach()

if(NOT tag1Found OR NOT ref1Found OR
   NOT tag2Found OR NOT ref2Found)
  set(RunCMake_TEST_FAILED "Custom reference XML tag not found.")
  return()
endif()
