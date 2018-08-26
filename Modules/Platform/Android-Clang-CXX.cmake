# Sniperkit-Bot
# - Status: analyzed

include(Platform/Android-Clang)
__android_compiler_clang(CXX)
if(_ANDROID_STL_NOSTDLIBXX)
  if(CMAKE_CXX_COMPILER_VERSION VERSION_GREATER_EQUAL 6)
    string(APPEND CMAKE_CXX_STANDARD_LIBRARIES " -nostdlib++")
  else()
    string(APPEND CMAKE_CXX_STANDARD_LIBRARIES " -nodefaultlibs -lgcc -lc -lm -ldl")
  endif()
endif()
