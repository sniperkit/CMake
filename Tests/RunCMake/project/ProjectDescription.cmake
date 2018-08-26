# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0048 NEW)
project(ProjectDescriptionTest VERSION 1.0.0 DESCRIPTION "Test Project" LANGUAGES)
if(NOT PROJECT_DESCRIPTION)
  message(FATAL_ERROR "PROJECT_DESCRIPTION expected to be set")
endif()
message(STATUS "PROJECT_DESCRIPTION=${PROJECT_DESCRIPTION}")
