# Sniperkit-Bot
# - Status: analyzed

# <ndk>/sources/cxx-stl/gnu-libstdc++/Android.mk
set(_ANDROID_STL_RTTI 1)
set(_ANDROID_STL_EXCEPTIONS 1)
set(_ANDROID_STL_NOSTDLIBXX 1)
macro(__android_stl_gnustl lang filename)
  __android_stl_inc(${lang} "${CMAKE_ANDROID_NDK}/sources/cxx-stl/gnu-libstdc++/${CMAKE_${lang}_ANDROID_TOOLCHAIN_VERSION}/include" 1)
  __android_stl_inc(${lang} "${CMAKE_ANDROID_NDK}/sources/cxx-stl/gnu-libstdc++/${CMAKE_${lang}_ANDROID_TOOLCHAIN_VERSION}/libs/${CMAKE_ANDROID_ARCH_ABI}/include" 1)
  __android_stl_inc(${lang} "${CMAKE_ANDROID_NDK}/sources/cxx-stl/gnu-libstdc++/${CMAKE_${lang}_ANDROID_TOOLCHAIN_VERSION}/include/backward" 1)
  __android_stl_lib(${lang} "${CMAKE_ANDROID_NDK}/sources/cxx-stl/gnu-libstdc++/${CMAKE_${lang}_ANDROID_TOOLCHAIN_VERSION}/libs/${CMAKE_ANDROID_ARCH_ABI}/${filename}" 1)
endmacro()
