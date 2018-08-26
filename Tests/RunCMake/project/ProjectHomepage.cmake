# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0048 NEW)
project(ProjectHomepageTest VERSION 1.0.0 HOMEPAGE_URL "http://example.com" LANGUAGES)
if(NOT PROJECT_HOMEPAGE_URL)
  message(FATAL_ERROR "PROJECT_HOMEPAGE_URL expected to be set")
endif()
if(NOT CMAKE_PROJECT_HOMEPAGE_URL)
  message(FATAL_ERROR "CMAKE_PROJECT_HOMEPAGE_URL expected to be set")
endif()
if(NOT ProjectHomepageTest_HOMEPAGE_URL)
  message(FATAL_ERROR "ProjectHomepageTest_HOMEPAGE_URL expected to be set")
endif()
message(STATUS "PROJECT_HOMEPAGE_URL=${PROJECT_HOMEPAGE_URL}")
message(STATUS "CMAKE_PROJECT_HOMEPAGE_URL=${CMAKE_PROJECT_HOMEPAGE_URL}")
message(STATUS "ProjectHomepageTest_HOMEPAGE_URL=${ProjectHomepageTest_HOMEPAGE_URL}")
