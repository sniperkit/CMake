# Sniperkit-Bot
# - Status: analyzed

try_compile(RESULT ${CMAKE_CURRENT_BINARY_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/src.c
  COPY_FILE ${CMAKE_CURRENT_BINARY_DIR}/copied.bin COPY_FILE_ERROR)
