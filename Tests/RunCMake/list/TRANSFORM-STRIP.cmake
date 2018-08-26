# Sniperkit-Bot
# - Status: analyzed

set(mylist " alpha" "bravo " " charlie " delta)

list(TRANSFORM mylist STRIP OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo;charlie;delta")
  message (FATAL_ERROR "TRANSFORM(STRIP) is \"${output}\", expected is \"alpha;bravo;charlie;delta\"")
endif()

set(mylist " alpha" "bravo " " charlie " "delta ")
unset(output)
list(TRANSFORM mylist STRIP AT 1 3 OUTPUT_VARIABLE output)
if (NOT output STREQUAL " alpha;bravo; charlie ;delta")
  message (FATAL_ERROR "TRANSFORM(STRIP) is \"${output}\", expected is \" alpha;bravo; charlie ;delta\"")
endif()

unset(output)
list(TRANSFORM mylist STRIP AT 1 -2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL " alpha;bravo;charlie;delta ")
  message (FATAL_ERROR "TRANSFORM(STRIP) is \"${output}\", expected is \" alpha;bravo;charlie;delta \"")
endif()

unset(output)
list(TRANSFORM mylist STRIP FOR 1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL " alpha;bravo;charlie;delta ")
  message (FATAL_ERROR "TRANSFORM(STRIP) is \"${output}\", expected is \" alpha;bravo;charlie;delta \"")
endif()

unset(output)
list(TRANSFORM mylist STRIP FOR 1 -1 OUTPUT_VARIABLE output)
if (NOT output STREQUAL " alpha;bravo;charlie;delta")
  message (FATAL_ERROR "TRANSFORM(STRIP) is \"${output}\", expected is \" alpha;bravo;charlie;delta\"")
endif()

unset(output)
list(TRANSFORM mylist STRIP FOR 0 -1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "alpha;bravo ;charlie;delta ")
  message (FATAL_ERROR "TRANSFORM(STRIP) is \"${output}\", expected is \"alpha;bravo ;charlie;delta \"")
endif()

unset(output)
list(TRANSFORM mylist STRIP REGEX "(r|t)a" OUTPUT_VARIABLE output)
if (NOT output STREQUAL " alpha;bravo; charlie ;delta")
  message (FATAL_ERROR "TRANSFORM(STRIP) is \"${output}\", expected is \" alpha;bravo; charlie ;delta\"")
endif()

unset(output)
list(TRANSFORM mylist STRIP REGEX "(r|t)a")
if (NOT mylist STREQUAL " alpha;bravo; charlie ;delta")
  message (FATAL_ERROR "TRANSFORM(STRIP) is \"${mylist}\", expected is \" alpha;bravo; charlie ;delta\"")
endif()
