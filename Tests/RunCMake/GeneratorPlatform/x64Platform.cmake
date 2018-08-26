# Sniperkit-Bot
# - Status: analyzed

foreach(v CMAKE_GENERATOR_PLATFORM CMAKE_VS_PLATFORM_NAME)
  if("x${${v}}" STREQUAL "xx64")
    message(STATUS "${v} is 'x64' as expected.")
  else()
    message(FATAL_ERROR "${v} is '${${v}}' but should be 'x64'!")
  endif()
endforeach()
