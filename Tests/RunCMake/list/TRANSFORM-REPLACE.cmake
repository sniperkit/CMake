# Sniperkit-Bot
# - Status: analyzed

set(mylist alpha bravo charlie delta)

list(TRANSFORM mylist REPLACE "(.+a)$" "\\1_\\1" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha_alpha;bravo;charlie;delta_delta")
  message (FATAL_ERROR "TRANSFORM(REPLACE) is \"${output}\", expected is \"alpha_alpha;bravo;charlie;delta_delta\"")
endif()

unset(output)
list(TRANSFORM mylist REPLACE "(.+a)$" "\\1_\\1" AT 1 3 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo;charlie;delta_delta")
  message (FATAL_ERROR "TRANSFORM(REPLACE) is \"${output}\", expected is \"alpha;bravo;charlie;delta_delta\"")
endif()

unset(output)
list(TRANSFORM mylist REPLACE "(.+e)$" "\\1_\\1" AT 1 -2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo;charlie_charlie;delta")
  message (FATAL_ERROR "TRANSFORM(REPLACE) is \"${output}\", expected is \"alpha;bravo;charlie_charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist REPLACE "(.+e)$" "\\1_\\1" FOR 1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo;charlie_charlie;delta")
  message (FATAL_ERROR "TRANSFORM(REPLACE) is \"${output}\", expected is \"alpha;bravo;charlie_charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist REPLACE "(.+a)$" "\\1_\\1" FOR 1 -1 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo;charlie;delta_delta")
  message (FATAL_ERROR "TRANSFORM(REPLACE) is \"${output}\", expected is \"alpha;bravo;charlie_A;delta_delta\"")
endif()

unset(output)
list(TRANSFORM mylist REPLACE "(.+a)$" "\\1_\\1" FOR 0 -1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha_alpha;bravo;charlie;delta")
  message (FATAL_ERROR "TRANSFORM(REPLACE) is \"${output}\", expected is \"alpha_alpha;bravo;charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist REPLACE "(.+a)$" "\\1_\\1" REGEX "(r|t)a" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo;charlie;delta_delta")
  message (FATAL_ERROR "TRANSFORM(REPLACE) is \"${output}\", expected is \"alpha;bravo;charlie;delta_delta\"")
endif()

unset(output)
list(TRANSFORM mylist REPLACE "(.+a)$" "\\1_\\1" REGEX "(r|t)a")
if (NOT mylist STREQUAL "alpha;bravo;charlie;delta_delta")
  message (FATAL_ERROR "TRANSFORM(REPLACE) is \"${mylist}\", expected is \"alpha;bravo;charlie;delta_delta\"")
endif()
