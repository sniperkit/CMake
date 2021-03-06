# Sniperkit-Bot
# - Status: analyzed

enable_language(C)
set(CMAKE_C_INCLUDE_WHAT_YOU_USE "${PSEUDO_IWYU}" -some -args)
set(CMAKE_C_CLANG_TIDY "${PSEUDO_TIDY}" -some -args)
set(CMAKE_C_CPPLINT "${PSEUDO_CPPLINT}" --verbose=0 --linelength=80)
set(CMAKE_C_CPPCHECK "${PSEUDO_CPPCHECK}")
add_executable(main main.c)
