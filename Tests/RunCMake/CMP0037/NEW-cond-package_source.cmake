# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0037 NEW)
file(WRITE "${CMAKE_BINARY_DIR}/CPackSourceConfig.cmake" "")
add_custom_target(test)
add_custom_target(package)
add_custom_target(package_source)
