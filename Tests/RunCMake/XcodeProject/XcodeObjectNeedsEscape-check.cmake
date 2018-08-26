# Sniperkit-Bot
# - Status: analyzed

set(expect "-DKDESRCDIR=\\\\\\\\\\\\\"foo\\\\\\\\\\\\\"")
file(STRINGS ${RunCMake_TEST_BINARY_DIR}/XcodeObjectNeedsEscape.xcodeproj/project.pbxproj actual
     REGEX "OTHER_CPLUSPLUSFLAGS = [^;]*;" LIMIT_COUNT 1)
if(NOT "${actual}" MATCHES "${expect}")
  message(SEND_ERROR "The actual project contains the line:\n ${actual}\n"
    "which does not match expected regex:\n ${expect}\n")
endif()
