# Sniperkit-Bot
# - Status: analyzed

cmake_minimum_required(VERSION 3.10...3.11)
message("CMAKE_MINIMUM_REQUIRED_VERSION='${CMAKE_MINIMUM_REQUIRED_VERSION}'")
foreach(policy CMP0071 CMP0072 CMP0073)
  cmake_policy(GET ${policy} status)
  message("${policy}='${status}'")
endforeach()
