# Sniperkit-Bot
# - Status: analyzed


set_property(DIRECTORY PROPERTY COMPILE_DEFINITIONS A "" B)
get_property(result DIRECTORY PROPERTY COMPILE_DEFINITIONS)
message("RESULT1=${result}")

set_property(DIRECTORY PROPERTY COMPILE_DEFINITIONS)
get_property(result DIRECTORY PROPERTY COMPILE_DEFINITIONS)
message("RESULT2=${result}")

set_property(DIRECTORY PROPERTY COMPILE_DEFINITIONS -DBAR)
get_property(result DIRECTORY PROPERTY COMPILE_DEFINITIONS)
message("RESULT3=${result}")
