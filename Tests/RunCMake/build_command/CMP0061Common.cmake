# Sniperkit-Bot
# - Status: analyzed

build_command(command)
message("${command}")
build_command(command TARGET MyTarget)
message("${command}")
build_command(command CONFIGURATION Debug)
message("${command}")
build_command(command CONFIGURATION Debug TARGET MyTarget)
message("${command}")
build_command(cache_command "${CMAKE_MAKE_PROGRAM}")
message("${cache_command}")
