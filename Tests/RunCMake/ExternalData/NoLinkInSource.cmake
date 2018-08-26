# Sniperkit-Bot
# - Status: analyzed

include(ExternalData)
set(ExternalData_LINK_CONTENT MD5)
set(ExternalData_SOURCE_ROOT ${CMAKE_CURRENT_BINARY_DIR})
set(ExternalData_BINARY_ROOT ${CMAKE_CURRENT_BINARY_DIR})
set(input ${CMAKE_CURRENT_BINARY_DIR}/ToLink.txt)
file(REMOVE ${input}.md5)
file(WRITE ${input} "To be transformed into a content link.")
ExternalData_Expand_Arguments(Data args DATA{${input}})
if("x${args}" STREQUAL "x${input}")
  message(STATUS "Data reference correctly not transformed!")
else()
  message(FATAL_ERROR "Data reference transformed to:\n  ${args}\n"
    "but we expected no transformation.")
endif()
