# Sniperkit-Bot
# - Status: analyzed

enable_language(C)
add_executable(myexe main.c)
install(TARGETS myexe DESTINATION bin-all)
install(TARGETS myexe DESTINATION bin-uns EXCLUDE_FROM_ALL)
install(TARGETS myexe DESTINATION bin-exc EXCLUDE_FROM_ALL COMPONENT exc)
