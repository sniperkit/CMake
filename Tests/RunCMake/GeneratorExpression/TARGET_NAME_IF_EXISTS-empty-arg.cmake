# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0070 NEW)
file(GENERATE OUTPUT TARGET_NAME_IF_EXISTS-generated.txt CONTENT "$<TARGET_NAME_IF_EXISTS:${empty}>")
