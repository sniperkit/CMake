# Sniperkit-Bot
# - Status: analyzed

set(mylist ALPHA BRAVO CHARLIE DELTA)

list(TRANSFORM mylist TOLOWER OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo;charlie;delta")
  message (FATAL_ERROR "TRANSFORM(TOLOWER) is \"${output}\", expected is \"alpha;bravo;charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist TOLOWER AT 1 3 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "ALPHA;bravo;CHARLIE;delta")
  message (FATAL_ERROR "TRANSFORM(TOLOWER) is \"${output}\", expected is \"ALPHA;bravo;CHARLIE;delta\"")
endif()

unset(output)
list(TRANSFORM mylist TOLOWER AT 1 -2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "ALPHA;bravo;charlie;DELTA")
  message (FATAL_ERROR "TRANSFORM(TOLOWER) is \"${output}\", expected is \"ALPHA;bravo;charlie;DELTA\"")
endif()

unset(output)
list(TRANSFORM mylist TOLOWER FOR 1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "ALPHA;bravo;charlie;DELTA")
  message (FATAL_ERROR "TRANSFORM(TOLOWER) is \"${output}\", expected is \"ALPHA;bravo;charlie;DELTA\"")
endif()

unset(output)
list(TRANSFORM mylist TOLOWER FOR 1 -1 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "ALPHA;bravo;charlie;delta")
  message (FATAL_ERROR "TRANSFORM(TOLOWER) is \"${output}\", expected is \"ALPHA;bravo;charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist TOLOWER FOR 0 -1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;BRAVO;charlie;DELTA")
  message (FATAL_ERROR "TRANSFORM(TOLOWER) is \"${output}\", expected is \"alpha;BRAVO;charlie;DELTA\"")
endif()

unset(output)
list(TRANSFORM mylist TOLOWER REGEX "(R|T)A" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "ALPHA;bravo;CHARLIE;delta")
  message (FATAL_ERROR "TRANSFORM(TOLOWER) is \"${output}\", expected is \"ALPHA;bravo;CHARLIE;delta\"")
endif()

unset(output)
list(TRANSFORM mylist TOLOWER REGEX "(R|T)A")
if (NOT mylist STREQUAL "ALPHA;bravo;CHARLIE;delta")
  message (FATAL_ERROR "TRANSFORM(TOLOWER) is \"${mylist}\", expected is \"ALPHA;bravo;CHARLIE;delta\"")
endif()
