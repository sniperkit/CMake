# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0054 NEW)

function(assert KEYWORD)
  if("${KEYWORD}" STREQUAL "${KEYWORD}")
  else()
    message(FATAL_ERROR
      "Assertion failed [\"${KEYWORD}\" STREQUAL \"${KEYWORD}\"]")
  endif()
endfunction()

assert("NOT")
assert("COMMAND")
assert("POLICY")
assert("TARGET")
assert("EXISTS")
assert("IS_DIRECTORY")
assert("IS_SYMLINK")
assert("IS_ABSOLUTE")
assert("DEFINED")
assert("(")
assert(")")

if("NOT" 1)
  message(FATAL_ERROR "[\"NOT\" 1] evaluated true")
endif()
