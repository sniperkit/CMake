# Sniperkit-Bot
# - Status: analyzed

enable_language(C)
enable_language(CXX)
foreach(lang C CXX)
  foreach(c "" _DEBUG _RELEASE _MINSIZEREL _RELWITHDEBINFO)
    message(STATUS "CMAKE_${lang}_FLAGS${c}='${CMAKE_${lang}_FLAGS${c}}'")
  endforeach()
endforeach()
