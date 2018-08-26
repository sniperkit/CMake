# Sniperkit-Bot
# - Status: analyzed

set(mylist one "$<1:two\;three>" four "$<TARGET_OBJECTS:some_target>")

list(TRANSFORM mylist GENEX_STRIP OUTPUT_VARIABLE output)
if (NOT output STREQUAL "one;;four;")
  message (FATAL_ERROR "TRANSFORM(GENEX_STRIP) is \"${output}\", expected is \"one;;four;\"")
endif()

set(mylist "one $<CONFIG>" "$<1:two\;three>-$<PLATFORM_ID>" "$<ANGLE-R>four" "$<TARGET_OBJECTS:some_target>")
unset(output)
list(TRANSFORM mylist GENEX_STRIP AT 1 3 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "one $<CONFIG>;-;$<ANGLE-R>four;")
  message (FATAL_ERROR "TRANSFORM(GENEX_STRIP) is \"${output}\", expected is \"one $<CONFIG>;-;$<ANGLE-R>four;\"")
endif()

unset(output)
list(TRANSFORM mylist GENEX_STRIP AT 1 -2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "one $<CONFIG>;-;four;$<TARGET_OBJECTS:some_target>")
  message (FATAL_ERROR "TRANSFORM(GENEX_STRIP) is \"${output}\", expected is \"one $<CONFIG>;-;four;$<TARGET_OBJECTS:some_target>\"")
endif()

unset(output)
list(TRANSFORM mylist GENEX_STRIP FOR 1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "one $<CONFIG>;-;four;$<TARGET_OBJECTS:some_target>")
  message (FATAL_ERROR "TRANSFORM(GENEX_STRIP) is \"${output}\", expected is \"one $<CONFIG>;-;four;$<TARGET_OBJECTS:some_target>\"")
endif()

unset(output)
list(TRANSFORM mylist GENEX_STRIP FOR 1 -1 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "one $<CONFIG>;-;four;")
  message (FATAL_ERROR "TRANSFORM(GENEX_STRIP) is \"${output}\", expected is \"one $<CONFIG>;-;four;\"")
endif()

unset(output)
list(TRANSFORM mylist GENEX_STRIP FOR 0 -1 2 OUTPUT_VARIABLE output)
if (NOT output STREQUAL "one ;$<1:two;three>-$<PLATFORM_ID>;four;$<TARGET_OBJECTS:some_target>")
  message (FATAL_ERROR "TRANSFORM(GENEX_STRIP) is \"${output}\", expected is \"one ;$<1:two;three>-$<PLATFORM_ID>;four;$<TARGET_OBJECTS:some_target>\"")
endif()

unset(output)
list(TRANSFORM mylist GENEX_STRIP REGEX "(D|G)>" OUTPUT_VARIABLE output)
if (NOT output STREQUAL "one ;-;$<ANGLE-R>four;$<TARGET_OBJECTS:some_target>")
  message (FATAL_ERROR "TRANSFORM(GENEX_STRIP) is \"${output}\", expected is \"one ;-;$<ANGLE-R>four;$<TARGET_OBJECTS:some_target>\"")
endif()

unset(output)
list(TRANSFORM mylist GENEX_STRIP REGEX "(D|G)>")
if (NOT mylist STREQUAL "one ;-;$<ANGLE-R>four;$<TARGET_OBJECTS:some_target>")
  message (FATAL_ERROR "TRANSFORM(GENEX_STRIP) is \"${mylist}\", expected is \"one ;-;$<ANGLE-R>four;$<TARGET_OBJECTS:some_target>\"")
endif()
