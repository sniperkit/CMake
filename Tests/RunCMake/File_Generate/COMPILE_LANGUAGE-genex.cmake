# Sniperkit-Bot
# - Status: analyzed

enable_language(CXX C)

file(GENERATE
  OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/opts-$<COMPILE_LANGUAGE>.txt
  CONTENT "LANG_IS_$<COMPILE_LANGUAGE>\n"
)
