# Sniperkit-Bot
# - Status: analyzed

if(NOT EXISTS "${txt}" OR NOT EXISTS "${exe}")
  file(REMOVE "${out}")
elseif("${exe}" IS_NEWER_THAN "${txt}")
  file(WRITE "${out}" "1\n")
else()
  file(WRITE "${out}" "0\n")
endif()
