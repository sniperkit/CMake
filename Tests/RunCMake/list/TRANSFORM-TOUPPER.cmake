# Sniperkit-Bot
# - Status: analyzed

set(mylist alpha bravo charlie delta)

list(TRANSFORM mylist TOUPPER OUTPUT_VARIABLE output)
if (NOT output STREQUAL "ALPHA;BRAVO;CHARLIE;DELTA")
  message (FATAL_ERROR "TRANSFORM(TOUPPER) is \"${output}\", expected is \"ALPHA;BRAVO;CHARLIE;DELTA\"")
endif()

unset(output)
list(TRANSFORM mylist TOUPPER AT 1 3 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;BRAVO;charlie;DELTA")
  message (FATAL_ERROR "TRANSFORM(TOUPPER) is \"${output}\", expected is \"alpha;BRAVO;charlie;DELTA\"")
endif()

unset(output)
list(TRANSFORM mylist TOUPPER AT 1 -2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;BRAVO;CHARLIE;delta")
  message (FATAL_ERROR "TRANSFORM(TOUPPER) is \"${output}\", expected is \"alpha;BRAVO;CHARLIE;delta\"")
endif()

unset(output)
list(TRANSFORM mylist TOUPPER FOR 1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;BRAVO;CHARLIE;delta")
  message (FATAL_ERROR "TRANSFORM(TOUPPER) is \"${output}\", expected is \"alpha;BRAVO;CHARLIE;delta\"")
endif()

unset(output)
list(TRANSFORM mylist TOUPPER FOR 1 -1 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;BRAVO;CHARLIE;DELTA")
  message (FATAL_ERROR "TRANSFORM(TOUPPER) is \"${output}\", expected is \"alpha;BRAVO;CHARLIE;DELTA\"")
endif()

unset(output)
list(TRANSFORM mylist TOUPPER FOR 0 -1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "ALPHA;bravo;CHARLIE;delta")
  message (FATAL_ERROR "TRANSFORM(TOUPPER) is \"${output}\", expected is \"ALPHA;bravo;CHARLIE;delta\"")
endif()

unset(output)
list(TRANSFORM mylist TOUPPER REGEX "(r|t)a" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;BRAVO;charlie;DELTA")
  message (FATAL_ERROR "TRANSFORM(TOUPPER) is \"${output}\", expected is \"alpha;BRAVO;charlie;DELTA\"")
endif()

unset(output)
list(TRANSFORM mylist TOUPPER REGEX "(r|t)a")
if (NOT mylist STREQUAL "alpha;BRAVO;charlie;DELTA")
  message (FATAL_ERROR "TRANSFORM(TOUPPER) is \"${mylist}\", expected is \"alpha;BRAVO;charlie;DELTA\"")
endif()
