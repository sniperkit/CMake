# Sniperkit-Bot
# - Status: analyzed


get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

if(NOT CURL_FIND_COMPONENTS)
    set(CURL_FIND_COMPONENTS curl libcurl)
    if(CURL_FIND_REQUIRED)
        set(CURL_FIND_REQUIRED_curl TRUE)
        set(CURL_FIND_REQUIRED_libcurl TRUE)
    endif()
endif()

set(_curl_missing_components)
foreach(_comp ${CURL_FIND_COMPONENTS})
    if(EXISTS "${_DIR}/${_comp}-target.cmake")
        include("${_DIR}/${_comp}-target.cmake")
        set(CURL_${_comp}_FOUND TRUE)
    else()
        set(CURL_${_comp}_FOUND FALSE)
        if(CURL_FIND_REQUIRED_${_comp})
            set(CURL_FOUND FALSE)
            list(APPEND _curl_missing_components ${_comp})
        endif()
    endif()
endforeach()

if(_curl_missing_components)
    set(CURL_NOT_FOUND_MESSAGE "Following required components not found: " ${_curl_missing_components})
else()
    if(TARGET CURL::libcurl)
        string(TOUPPER "${CMAKE_BUILD_TYPE}" _curl_current_config)
        if(NOT _curl_current_config)
            set(_curl_current_config "NOCONFIG")
        endif()
        get_target_property(_curl_configurations CURL::libcurl IMPORTED_CONFIGURATIONS)
        list(FIND _curl_configurations "${_curl_current_config}" _i)
        if(_i LESS 0)
            set(_curl_config "RELEASE")
            list(FIND _curl_configurations "${_curl_current_config}" _i)
            if(_i LESS 0)
                set(_curl_config "NOCONFIG")
                list(FIND _curl_configurations "${_curl_current_config}" _i)
            endif()
        endif()

        if(_i LESS 0)
            set(_curl_current_config "") # let CMake pick config at random
        else()
	    set(_curl_current_config "_${_curl_current_config}")
        endif()

        get_target_property(CURL_INCLUDE_DIRS CURL::libcurl INTERFACE_INCLUDE_DIRECTORIES)
        get_target_property(CURL_LIBRARIES CURL::libcurl "LOCATION${_curl_current_config}")
        set(_curl_current_config)
        set(_curl_configurations)
        set(_i)
    endif()
endif()

unset(_curl_missing_components)
