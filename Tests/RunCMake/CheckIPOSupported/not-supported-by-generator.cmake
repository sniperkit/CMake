# Sniperkit-Bot
# - Status: analyzed

project(${RunCMake_TEST} LANGUAGES C)

set(_CMAKE_C_IPO_SUPPORTED_BY_CMAKE YES)
set(_CMAKE_C_IPO_MAY_BE_SUPPORTED_BY_COMPILER YES)

check_ipo_supported()
