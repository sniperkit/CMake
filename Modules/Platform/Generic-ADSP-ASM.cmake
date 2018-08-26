# Sniperkit-Bot
# - Status: analyzed

include(Platform/Generic-ADSP-Common)

set(CMAKE_ASM_SOURCE_FILE_EXTENSIONS asm)
set(CMAKE_ASM_OUTPUT_EXTENSION ".doj" )
set(CMAKE_ASM_COMPILE_OBJECT
    "<CMAKE_ASM_COMPILER> <INCLUDES> <FLAGS> -proc ${ADSP_PROCESSOR} -si-revision ${ADSP_PROCESSOR_SILICIUM_REVISION} -o <OBJECT> <SOURCE>")

