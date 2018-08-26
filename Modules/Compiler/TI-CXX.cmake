# Sniperkit-Bot
# - Status: analyzed

set(CMAKE_LIBRARY_PATH_FLAG "--search_path=")
set(CMAKE_LINK_LIBRARY_FLAG "--library=")
set(CMAKE_INCLUDE_FLAG_CXX "--include_path=")

set(CMAKE_DEPFILE_FLAGS_CXX "--preproc_with_compile --preproc_dependency=<DEPFILE>")

set(CMAKE_CXX_CREATE_ASSEMBLY_SOURCE "<CMAKE_CXX_COMPILER> --compile_only --skip_assembler --cpp_file=<SOURCE> <DEFINES> <INCLUDES> <FLAGS> --output_file=<ASSEMBLY_SOURCE>")
set(CMAKE_CXX_CREATE_PREPROCESSED_SOURCE "<CMAKE_CXX_COMPILER> --preproc_only --cpp_file=<SOURCE> <DEFINES> <INCLUDES> <FLAGS> --output_file=<PREPROCESSED_SOURCE>")

set(CMAKE_CXX_COMPILE_OBJECT  "<CMAKE_CXX_COMPILER> --compile_only --cpp_file=<SOURCE> <DEFINES> <INCLUDES> <FLAGS> --output_file=<OBJECT>")
set(CMAKE_CXX_ARCHIVE_CREATE "<CMAKE_AR> -r <TARGET> <OBJECTS>")
set(CMAKE_CXX_LINK_EXECUTABLE "<CMAKE_CXX_COMPILER> --run_linker --output_file=<TARGET> --map_file=<TARGET>.map <CMAKE_CXX_LINK_FLAGS> <LINK_LIBRARIES> <LINK_FLAGS> <OBJECTS>")
