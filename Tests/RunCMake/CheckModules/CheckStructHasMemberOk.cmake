# Sniperkit-Bot
# - Status: analyzed

enable_language(C)
enable_language(CXX)
include(CheckStructHasMember)
check_struct_has_member("struct timeval" tv_sec sys/select.h HAVE_TIMEVAL_TV_SEC)
check_struct_has_member("struct timeval" tv_sec sys/select.h HAVE_TIMEVAL_TV_SEC_C LANGUAGE C)
check_struct_has_member("struct timeval" tv_sec sys/select.h HAVE_TIMEVAL_TV_SEC_CXX LANGUAGE CXX)
