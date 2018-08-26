# Sniperkit-Bot
# - Status: analyzed

set(mylist alpha bravo charlie delta)

list(TRANSFORM mylist APPEND "_A" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha_A;bravo_A;charlie_A;delta_A")
  message (FATAL_ERROR "TRANSFORM(APPEND) is \"${output}\", expected is \"alpha_A;bravo_A;charlie_A;delta_A\"")
endif()

unset(output)
list(TRANSFORM mylist APPEND "_A" AT 1 3 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo_A;charlie;delta_A")
  message (FATAL_ERROR "TRANSFORM(APPEND) is \"${output}\", expected is \"alpha;bravo_A;charlie;delta_A\"")
endif()

unset(output)
list(TRANSFORM mylist APPEND "_A" AT 1 -2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo_A;charlie_A;delta")
  message (FATAL_ERROR "TRANSFORM(APPEND) is \"${output}\", expected is \"alpha;bravo_A;charlie_A;delta\"")
endif()

unset(output)
list(TRANSFORM mylist APPEND "_A" FOR 1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo_A;charlie_A;delta")
  message (FATAL_ERROR "TRANSFORM(APPEND) is \"${output}\", expected is \"alpha;bravo_A;charlie_A;delta\"")
endif()

unset(output)
list(TRANSFORM mylist APPEND "_A" FOR 1 -1 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo_A;charlie_A;delta_A")
  message (FATAL_ERROR "TRANSFORM(APPEND) is \"${output}\", expected is \"alpha;bravo_A;charlie_A;delta_A\"")
endif()

unset(output)
list(TRANSFORM mylist APPEND "_A" FOR 0 -1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha_A;bravo;charlie_A;delta")
  message (FATAL_ERROR "TRANSFORM(APPEND) is \"${output}\", expected is \"alpha_A;bravo;charlie_A;delta\"")
endif()

unset(output)
list(TRANSFORM mylist APPEND "_A" REGEX "(r|t)a" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo_A;charlie;delta_A")
  message (FATAL_ERROR "TRANSFORM(APPEND) is \"${output}\", expected is \"alpha;bravo_A;charlie;delta_A\"")
endif()

unset(output)
list(TRANSFORM mylist APPEND "_A" REGEX "(r|t)a")
if (NOT mylist STREQUAL "alpha;bravo_A;charlie;delta_A")
  message (FATAL_ERROR "TRANSFORM(APPEND) is \"${mylist}\", expected is \"alpha;bravo_A;charlie;delta_A\"")
endif()
