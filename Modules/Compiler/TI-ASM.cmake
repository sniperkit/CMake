# Sniperkit-Bot
# - Status: analyzed

set(CMAKE_LIBRARY_PATH_FLAG "--search_path=")
set(CMAKE_LINK_LIBRARY_FLAG "--library=")
set(CMAKE_INCLUDE_FLAG_ASM "--include_path=")

set(CMAKE_ASM_COMPILE_OBJECT  "<CMAKE_ASM_COMPILER> --compile_only --asm_file=<SOURCE> <DEFINES> <INCLUDES> <FLAGS> --output_file=<OBJECT>")
set(CMAKE_ASM_LINK_EXECUTABLE "<CMAKE_ASM_COMPILER> <OBJECTS> --run_linker --output_file=<TARGET> <CMAKE_ASM_LINK_FLAGS> <LINK_FLAGS> <LINK_LIBRARIES>")

set(CMAKE_ASM_SOURCE_FILE_EXTENSIONS asm;s;abs)
