# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0069 NEW)

set(_CMAKE_CXX_IPO_SUPPORTED_BY_CMAKE YES)
set(_CMAKE_CXX_IPO_MAY_BE_SUPPORTED_BY_COMPILER NO)

add_executable(foo main.cpp)
set_target_properties(foo PROPERTIES INTERPROCEDURAL_OPTIMIZATION TRUE)
