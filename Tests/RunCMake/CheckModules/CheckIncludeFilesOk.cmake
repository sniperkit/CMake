# Sniperkit-Bot
# - Status: analyzed

enable_language(C)
enable_language(CXX)
include(CheckIncludeFiles)
check_include_files("stddef.h;stdlib.h" HAVE_STDLIB_H)
check_include_files("stddef.h;stdlib.h" HAVE_STDLIB_H2 LANGUAGE C)
check_include_files("cstddef;cstdlib" HAVE_CSTDLIB_H LANGUAGE CXX)
