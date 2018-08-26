# Sniperkit-Bot
# - Status: analyzed

# Autogen build options
set(Autogen_BUILD_OPTIONS "-DQT_TEST_VERSION=${QT_TEST_VERSION}")
if(NOT _isMultiConfig)   # Set in Tests/CMakeLists.txt
  list(APPEND Autogen_BUILD_OPTIONS "-DCMAKE_BUILD_TYPE=$<CONFIGURATION>")
endif()
list(APPEND Autogen_BUILD_OPTIONS
    "-DQT_QMAKE_EXECUTABLE:FILEPATH=${QT_QMAKE_EXECUTABLE}"
)

# A macro to add a QtAutogen test
macro(ADD_AUTOGEN_TEST NAME)
  if(${ARGC} GREATER 1)
    # On Windows there is no RPATH, so while Qt might be available for building,
    # the required dlls may not be in the PATH, so we can't run the executables
    # on that platform.
    if(WIN32)
      set(_TestCommand --test-command ${CMAKE_CTEST_COMMAND} -V)
    else()
      set(_TestCommand --test-command ${ARGN})
    endif()
  endif()

  set(_QtXAutogen "Qt${QT_TEST_VERSION}Autogen")
  set(_SourceDir "${CMake_SOURCE_DIR}/Tests/QtAutogen/${NAME}")
  set(_BuildDir "${CMake_BINARY_DIR}/Tests/${_QtXAutogen}/${NAME}")
  add_test(NAME "${_QtXAutogen}.${NAME}" COMMAND "${CMAKE_CTEST_COMMAND}"
    --build-and-test
    "${_SourceDir}"
    "${_BuildDir}"
    ${build_generator_args}
    --build-project ${NAME}
    --build-exe-dir "${_BuildDir}"
    --force-new-ctest-process
    --build-options ${build_options} ${Autogen_BUILD_OPTIONS}
    ${_TestCommand}
  )
  list(APPEND TEST_BUILD_DIRS "${_BuildDir}")
  unset(_TestCommand)
  unset(_QtXAutogen)
  unset(_SourceDir)
  unset(_BuildDir)
endmacro()

# Allow using qtx_wrap_cpp and qtx_generate_moc or not
set(QT_TEST_ALLOW_QT_MACROS TRUE)
# Do a simple check if there is are non ASCII character in the build path
string(REGEX MATCH "[^ -~]+" NON_ASCII_BDIR ${CMAKE_CURRENT_BINARY_DIR})
if(NON_ASCII_BDIR)
  # Qt4 moc does not support utf8 paths in _parameter files generated by
  # qtx_wrap_cpp
  # https://bugreports.qt.io/browse/QTBUG-35480
  if(QT_TEST_VERSION STREQUAL 4)
    set(QT_TEST_ALLOW_QT_MACROS FALSE)
  endif()
  # On windows qtx_wrap_cpp also fails in Qt5 when used on a path that
  # contains non ASCII characters
  if(WIN32)
    set(QT_TEST_ALLOW_QT_MACROS FALSE)
  endif()
endif()
