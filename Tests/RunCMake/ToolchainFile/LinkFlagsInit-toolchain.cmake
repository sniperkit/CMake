# Sniperkit-Bot
# - Status: analyzed

foreach(t EXE SHARED MODULE STATIC)
  foreach(c "" _DEBUG _RELEASE _MINSIZEREL _RELWITHDEBINFO)
    set(CMAKE_${t}_LINKER_FLAGS${c}_INIT MY_${t}_FLAGS${c}_INIT)
  endforeach()
endforeach()
