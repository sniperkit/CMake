# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0048 NEW)
set(PROJECT_VERSION 1)
project(ProjectA VERSION LANGUAGES NONE)
get_property(langs GLOBAL PROPERTY ENABLED_LANGUAGES)
message(STATUS "ENABLED_LANGUAGES='${langs}'")
message(STATUS "PROJECT_VERSION='${PROJECT_VERSION}'")
