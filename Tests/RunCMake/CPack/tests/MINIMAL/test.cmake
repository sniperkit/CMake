# Sniperkit-Bot
# - Status: analyzed

install(FILES CMakeLists.txt DESTINATION foo COMPONENT test)

if(PACKAGING_TYPE STREQUAL "COMPONENT")
  set(CPACK_COMPONENTS_ALL test)
endif()
