# Sniperkit-Bot
# - Status: analyzed

set(input  ${CMAKE_CURRENT_BINARY_DIR}/CustomCMakeInput.txt)
set(stamp  ${CMAKE_CURRENT_BINARY_DIR}/CustomCMakeStamp.txt)
file(READ ${input} content)
file(WRITE ${stamp} "${content}")

set(depend ${CMAKE_CURRENT_BINARY_DIR}/CustomCMakeDepend.txt)
set(output ${CMAKE_CURRENT_BINARY_DIR}/CustomCMakeOutput.txt)
set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS ${depend})
file(READ ${depend} content)
file(WRITE ${output} "${content}")
set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS RerunCMake.txt)
