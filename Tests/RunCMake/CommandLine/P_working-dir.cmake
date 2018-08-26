# Sniperkit-Bot
# - Status: analyzed

if(NOT IS_DIRECTORY "${EXPECTED_WORKING_DIR}")
  message(FATAL_ERROR "EXPECTED_WORKING_DIR is not a directory: ${EXPECTED_WORKING_DIR}")
endif()

foreach(d CMAKE_BINARY_DIR CMAKE_CURRENT_BINARY_DIR CMAKE_SOURCE_DIR CMAKE_CURRENT_SOURCE_DIR)
  if(NOT DEFINED ${d})
    message(FATAL_ERROR "${d} is not defined")
  endif()
  if(EXPECTED_WORKING_DIR STREQUAL "${${d}}")
    message(STATUS "${d} is the expected working directory (${EXPECTED_WORKING_DIR})")
  else()
    message(FATAL_ERROR "${d} = \"${${d}}\" is not the expected working directory (${EXPECTED_WORKING_DIR})")
  endif()
endforeach()
