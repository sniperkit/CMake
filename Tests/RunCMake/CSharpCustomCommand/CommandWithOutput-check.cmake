# Sniperkit-Bot
# - Status: analyzed

if(checkLevel EQUAL 0)
  message("checking generation (${srcName} does not exist)")
  if(EXISTS "${generatedFileName}")
    set(RunCMake_TEST_FAILED "file \"${generatedFileName}\" should not exist")
  endif()
elseif(checkLevel EQUAL 1)
  message("checking build 1 (generate ${srcName})")
  if(NOT "${actual_stdout}" MATCHES "${commandComment}")
    set(RunCMake_TEST_FAILED "command not executed")
  endif()
elseif(checkLevel EQUAL 2)
  message("checking build 2 (no change in ${srcName}.in)")
  if("${actual_stdout}" MATCHES "${commandComment}")
    set(RunCMake_TEST_FAILED "command executed")
  endif()
elseif(checkLevel EQUAL 3)
  message("checking build 3 (update ${srcName})")
  if(NOT "${actual_stdout}" MATCHES "${commandComment}")
    set(RunCMake_TEST_FAILED "command not executed")
  endif()
endif()
