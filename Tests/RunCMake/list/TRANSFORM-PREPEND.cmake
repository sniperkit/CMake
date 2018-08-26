# Sniperkit-Bot
# - Status: analyzed

set(mylist alpha bravo charlie delta)

list(TRANSFORM mylist PREPEND "P_" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "P_alpha;P_bravo;P_charlie;P_delta")
  message (FATAL_ERROR "TRANSFORM(PREPEND) is \"${output}\", expected is \"P_alpha;P_bravo;P_charlie;P_delta\"")
endif()

unset(output)
list(TRANSFORM mylist PREPEND "P_" AT 1 3 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;P_bravo;charlie;P_delta")
  message (FATAL_ERROR "TRANSFORM(PREPEND) is \"${output}\", expected is \"alpha;P_bravo;charlie;P_delta\"")
endif()

unset(output)
list(TRANSFORM mylist PREPEND "P_" AT 1 -2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;P_bravo;P_charlie;delta")
  message (FATAL_ERROR "TRANSFORM(PREPEND) is \"${output}\", expected is \"alpha;P_bravo;P_charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist PREPEND "P_" FOR 1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;P_bravo;P_charlie;delta")
  message (FATAL_ERROR "TRANSFORM(PREPEND) is \"${output}\", expected is \"alpha;P_bravo;P_charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist PREPEND "P_" FOR 1 -1 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;P_bravo;P_charlie;P_delta")
  message (FATAL_ERROR "TRANSFORM(PREPEND) is \"${output}\", expected is \"alpha;P_bravo;P_charlie;P_delta\"")
endif()

unset(output)
list(TRANSFORM mylist PREPEND "P_" FOR 0 -1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "P_alpha;bravo;P_charlie;delta")
  message (FATAL_ERROR "TRANSFORM(PREPEND) is \"${output}\", expected is \"P_alpha;bravo;P_charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist PREPEND "P_" REGEX "(r|t)a" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;P_bravo;charlie;P_delta")
  message (FATAL_ERROR "TRANSFORM(PREPEND) is \"${output}\", expected is \"alpha;P_bravo;charlie;P_delta\"")
endif()

unset(output)
list(TRANSFORM mylist PREPEND "P_" REGEX "(r|t)a")
if (NOT mylist STREQUAL "alpha;P_bravo;charlie;P_delta")
  message (FATAL_ERROR "TRANSFORM(PREPEND) is \"${mylist}\", expected is \"alpha;P_bravo;charlie;P_delta\"")
endif()
