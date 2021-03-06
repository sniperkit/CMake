# Sniperkit-Bot
# - Status: analyzed

set(b b)
set(out x)
string(CONCAT out)
if(NOT out STREQUAL "")
  message(FATAL_ERROR "\"string(CONCAT out)\" set out to \"${out}\"")
endif()
string(CONCAT out a)
if(NOT out STREQUAL "a")
  message(FATAL_ERROR "\"string(CONCAT out a)\" set out to \"${out}\"")
endif()
string(CONCAT out a "b")
if(NOT out STREQUAL "ab")
  message(FATAL_ERROR "\"string(CONCAT out a \"b\")\" set out to \"${out}\"")
endif()
string(CONCAT out a "${b}" [[
${c}]])
if(NOT out STREQUAL "ab\${c}")
  message(FATAL_ERROR "\"string(CONCAT out a \"\${b}\" [[\${c}]])\" set out to \"${out}\"")
endif()
