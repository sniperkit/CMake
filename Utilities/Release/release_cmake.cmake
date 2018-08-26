# Sniperkit-Bot
# - Status: analyzed

get_filename_component(SCRIPT_PATH "${CMAKE_CURRENT_LIST_FILE}" PATH)

# default to self extracting tgz, tgz, and tar.Z
if(NOT DEFINED CPACK_BINARY_GENERATORS)
  set(CPACK_BINARY_GENERATORS "STGZ TGZ TZ")
endif()
if(NOT DEFINED CMAKE_RELEASE_DIRECTORY)
  set(CMAKE_RELEASE_DIRECTORY "~/CMakeReleaseDirectory")
endif()
if(NOT DEFINED SCRIPT_NAME)
  set(SCRIPT_NAME "${HOST}")
endif()
if(NOT DEFINED MAKE_PROGRAM)
  message(FATAL_ERROR "MAKE_PROGRAM must be set")
endif()
if(NOT DEFINED MAKE)
  set(MAKE "${MAKE_PROGRAM}")
endif()
if(NOT DEFINED RUN_SHELL)
  set(RUN_SHELL "/bin/sh")
endif()
if(NOT DEFINED RUN_LAUNCHER)
  set(RUN_LAUNCHER "")
endif()
if(NOT DEFINED PROCESSORS)
  set(PROCESSORS 1)
endif()
if(NOT DEFINED CMAKE_CREATE_VERSION)
  message(FATAL_ERROR "CMAKE_CREATE_VERSION not defined")
endif()
if(NOT DEFINED GIT_COMMAND)
  set(GIT_COMMAND git)
endif()

if(CMAKE_CREATE_VERSION MATCHES "^(master|release)$")
  set(GIT_FETCH "")
  set(GIT_BRANCH origin/${CMAKE_CREATE_VERSION})
elseif(CMAKE_CREATE_VERSION STREQUAL "nightly")
  set(nightly stage/master/nightly/latest)
  set(GIT_FETCH "${GIT_COMMAND} fetch origin refs/${nightly}:refs/remotes/origin/${nightly}")
  set(GIT_BRANCH origin/${nightly})
else()
  set(stage stage/master/head)
  set(GIT_FETCH "${GIT_COMMAND} fetch origin refs/${stage}:refs/remotes/origin/${stage}")
  set(GIT_BRANCH ${CMAKE_CREATE_VERSION})
endif()

if(NOT DEFINED FINAL_PATH )
  set(FINAL_PATH ${CMAKE_RELEASE_DIRECTORY}/${CMAKE_CREATE_VERSION}-build)
endif()

if(NOT HOST)
  message(FATAL_ERROR "HOST must be specified with -DHOST=host")
endif()
if(NOT DEFINED MAKE)
  message(FATAL_ERROR "MAKE must be specified with -DMAKE=\"make -j2\"")
endif()

message("Creating CMake release ${CMAKE_CREATE_VERSION} on ${HOST} with parallel = ${PROCESSORS}")

# define a macro to run a remote command
macro(remote_command comment command)
  message("${comment}")
  if(${ARGC} GREATER 2)
    message("ssh ${HOST} ${RUN_LAUNCHER} ${command}")
    execute_process(COMMAND ssh ${HOST} ${RUN_LAUNCHER} ${command} RESULT_VARIABLE result INPUT_FILE ${ARGV2})
  else()
    message("ssh ${HOST} ${RUN_LAUNCHER} ${command}")
    execute_process(COMMAND ssh ${HOST} ${RUN_LAUNCHER} ${command} RESULT_VARIABLE result)
  endif()
  if(${result} GREATER 0)
    message(FATAL_ERROR "Error running command: ${command}, return value = ${result}")
  endif()
endmacro()

if(CMAKE_DOC_TARBALL)
  get_filename_component(CMAKE_DOC_TARBALL_NAME "${CMAKE_DOC_TARBALL}" NAME)
  string(REPLACE ".tar.gz" "-${SCRIPT_NAME}.tar.gz" CMAKE_DOC_TARBALL_STAGED "${CMAKE_DOC_TARBALL_NAME}")
  message("scp '${CMAKE_DOC_TARBALL}' '${HOST}:${CMAKE_DOC_TARBALL_STAGED}'")
  execute_process(COMMAND
    scp ${CMAKE_DOC_TARBALL} ${HOST}:${CMAKE_DOC_TARBALL_STAGED}
    RESULT_VARIABLE result)
  if(${result} GREATER 0)
    message("error sending doc tarball with scp '${CMAKE_DOC_TARBALL}' '${HOST}:${CMAKE_DOC_TARBALL_STAGED}'")
  endif()
endif()

# set this so configure file will work from script mode
# create the script specific for the given host
set(SCRIPT_FILE release_cmake-${SCRIPT_NAME}.sh)
configure_file(${SCRIPT_PATH}/release_cmake.sh.in ${SCRIPT_FILE} @ONLY)

# run the script by starting a shell on the remote machine
# then using the script file as input to the shell
if(RUN_LOCAL)
  message(FATAL_ERROR "run this command: ${RUN_SHELL} ${SCRIPT_FILE}")
else()
  remote_command("run release_cmake-${HOST}.sh on server"
    "${RUN_SHELL}" ${SCRIPT_FILE})
endif()

# now figure out which types of packages were created
set(generators ${CPACK_BINARY_GENERATORS} ${CPACK_SOURCE_GENERATORS})
separate_arguments(generators)
foreach(gen ${generators})
  if("${gen}" STREQUAL "TGZ")
    set(SUFFIXES ${SUFFIXES} "*.tar.gz")
  endif()
  if("${gen}" STREQUAL "STGZ")
    set(SUFFIXES ${SUFFIXES} "*.sh")
  endif()
  if("${gen}" STREQUAL "DragNDrop")
    set(SUFFIXES ${SUFFIXES} "*.dmg")
  endif()
  if("${gen}" STREQUAL "TBZ2")
    set(SUFFIXES ${SUFFIXES} "*.tar.bz2")
  endif()
  if("${gen}" STREQUAL "TZ")
    set(SUFFIXES ${SUFFIXES} "*.tar.Z")
  endif()
  if("${gen}" STREQUAL "WIX")
    set(SUFFIXES ${SUFFIXES} "*.msi")
  endif()
  if("${gen}" STREQUAL "ZIP")
    set(SUFFIXES ${SUFFIXES} "*.zip")
  endif()
  if("${gen}" STREQUAL "NSIS")
    set(SUFFIXES ${SUFFIXES} "*.exe")
  endif()
endforeach()

if(SUFFIXES)
  list(REMOVE_DUPLICATES SUFFIXES)
endif()

if(LOCAL_DIR)
  file(MAKE_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${LOCAL_DIR}")
else()
  set(LOCAL_DIR .)
endif()

# copy all the files over from the remote machine
set(PROJECT_PREFIX cmake-)
foreach(suffix ${SUFFIXES})
  message("scp ${HOST}:${FINAL_PATH}/${PROJECT_PREFIX}${suffix} ${LOCAL_DIR}")
  execute_process(COMMAND
    scp ${HOST}:${FINAL_PATH}/${PROJECT_PREFIX}${suffix} ${LOCAL_DIR}
    RESULT_VARIABLE result)
  if(${result} GREATER 0)
    message("error getting file back scp ${HOST}:${FINAL_PATH}/${PROJECT_PREFIX}${suffix} ${LOCAL_DIR}")
  endif()
endforeach()

# if there are extra files to copy get them as well
if(extra_files)
  foreach(f ${extra_files})
    message("scp ${HOST}:${FINAL_PATH}/${f} ${LOCAL_DIR}")
    execute_process(COMMAND
      scp ${HOST}:${FINAL_PATH}/${f} ${LOCAL_DIR}
      RESULT_VARIABLE result)
    if(${result} GREATER 0)
      message("error getting file back scp ${HOST}:${FINAL_PATH}/${f} ${LOCAL_DIR}")
    endif()
  endforeach()
endif()
