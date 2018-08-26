# Sniperkit-Bot
# - Status: analyzed

if (${CMAKE_ARGC} LESS 4)
  message(FATAL_ERROR "Too few arguments")
endif()
set(output "${CMAKE_ARGV3}")
if(EXISTS ${output})
  message(FATAL_ERROR "${output} already exists")
endif()
file(WRITE ${output} "int main() { return 0; }\n")
