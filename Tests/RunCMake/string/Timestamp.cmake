# Sniperkit-Bot
# - Status: analyzed

set(ENV{SOURCE_DATE_EPOCH} "1123456789")
string(TIMESTAMP RESULT "%Y-%m-%d %H:%M:%S %A=%a %B=%b %y day=%j wd=%w week=%U %%I=%I epoch=%s" UTC)
message("RESULT=${RESULT}")
