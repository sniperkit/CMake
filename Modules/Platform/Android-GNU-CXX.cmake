# Sniperkit-Bot
# - Status: analyzed

include(Platform/Android-GNU)
__android_compiler_gnu(CXX)
if(_ANDROID_STL_NOSTDLIBXX)
  string(APPEND CMAKE_CXX_STANDARD_LIBRARIES " -nodefaultlibs -lgcc -lc -lm -ldl")
endif()
