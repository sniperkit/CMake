# Sniperkit-Bot
# - Status: analyzed

set(VAR_INCLUDE "VAL_INCLUDE")
set(VAR_LINK_DIRS "VAL_LINK_DIRS")
set(VAR_LINK_LIBS "VAL_LINK_LIBS")
add_custom_target(some_target)
include_directories("/usr/include/\${VAR_INCLUDE}" /usr/include/normal)
link_directories("/usr/lib/\${VAR_LINK_DIRS}"  /usr/lib/normal)
link_libraries("\${VAR_LINK_LIBS}" normal)
add_custom_target(other_target)
set_property(TARGET other_target PROPERTY INCLUDE_DIRECTORIES "")
