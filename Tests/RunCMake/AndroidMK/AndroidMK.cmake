# Sniperkit-Bot
# - Status: analyzed

project(build)
set(CMAKE_BUILD_TYPE Debug)
add_library(foo foo.cxx)
add_library(car foo.cxx)
add_library(bar bar.c)
add_library(dog  foo.cxx)
target_link_libraries(foo PRIVATE car bar dog debug -lm)
export(TARGETS bar dog car foo  ANDROID_MK
  ${build_BINARY_DIR}/Android.mk)
install(TARGETS bar dog car foo DESTINATION lib EXPORT myexp)
install(EXPORT_ANDROID_MK myexp DESTINATION share/ndk-modules)
