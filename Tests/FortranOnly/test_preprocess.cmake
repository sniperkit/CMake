# Sniperkit-Bot
# - Status: analyzed

set(TEST_FILE CMakeFiles/preprocess.dir/preprocess.F.i)
file(READ ${TEST_FILE} CONTENTS)
if("${CONTENTS}" MATCHES "PRINT *")
  message(STATUS "${TEST_FILE} created successfully!")
else()
  message(FATAL_ERROR "${TEST_FILE} creation failed!")
endif()
