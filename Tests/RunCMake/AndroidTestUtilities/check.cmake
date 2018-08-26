# Sniperkit-Bot
# - Status: analyzed

function(compare_build_to_expected)
  cmake_parse_arguments(_comp "" "" "FILES" ${ARGN})
  set(missing)
  foreach(file ${_comp_FILES})
    if(NOT EXISTS "${RunCMake_TEST_BINARY_DIR}/${file}")
      list(APPEND missing "${file}")
    endif()
  endforeach()
  if(missing)
    string(APPEND RunCMake_TEST_FAILED "Missing files:\n ${missing}")
    set(RunCMake_TEST_FAILED "${RunCMake_TEST_FAILED}" PARENT_SCOPE)
  endif()
endfunction()

function(check_for_setup_test)
  file(STRINGS "${RunCMake_TEST_BINARY_DIR}/CTestTestfile.cmake" output_var REGEX "add_test\\(setup_test.*")
  if(NOT output_var)
    set(RunCMake_TEST_FAILED "Could not find the test: setup_test" PARENT_SCOPE)
  endif()
endfunction()
