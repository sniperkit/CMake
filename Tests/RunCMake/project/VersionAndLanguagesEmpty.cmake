# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0048 NEW)
project(ProjectA VERSION 1 LANGUAGES NONE)
get_property(langs GLOBAL PROPERTY ENABLED_LANGUAGES)
message(STATUS "ENABLED_LANGUAGES='${langs}'")
message(STATUS "PROJECT_VERSION='${PROJECT_VERSION}'")
