# Sniperkit-Bot
# - Status: analyzed

set(mylist FILTER_THIS_BIT DO_NOT_FILTER_THIS thisisanitem FILTER_THIS_THING)
list(FILTER mylist RM REGEX "^FILTER_THIS_.+")
