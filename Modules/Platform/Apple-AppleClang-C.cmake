# Sniperkit-Bot
# - Status: analyzed

include(Platform/Apple-Clang-C)
if(NOT CMAKE_C_COMPILER_VERSION VERSION_LESS 4.2)
  set(CMAKE_C_SYSTEM_FRAMEWORK_SEARCH_FLAG "-iframework ")
else()
  unset(CMAKE_C_SYSTEM_FRAMEWORK_SEARCH_FLAG)
endif()
