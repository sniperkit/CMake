# Sniperkit-Bot
# - Status: analyzed

enable_language(CXX)
set(CMAKE_CXX_INCLUDE_WHAT_YOU_USE "${PSEUDO_IWYU}" -some -args)
set(CMAKE_CXX_CLANG_TIDY "${PSEUDO_TIDY}" -some -args)
set(CMAKE_CXX_CPPLINT "${PSEUDO_CPPLINT}" --verbose=0 --linelength=80)
set(CMAKE_CXX_CPPCHECK "${PSEUDO_CPPCHECK}")
add_executable(main main.cxx)
