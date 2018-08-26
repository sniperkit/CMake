# Sniperkit-Bot
# - Status: analyzed

foreach(d "${Data2}" "${Data2b}")
  file(STRINGS "${d}" lines LIMIT_INPUT 1024)
  if(NOT "x${lines}" STREQUAL "xInput file already transformed.")
    message(SEND_ERROR "Input file:\n  ${d}\ndoes not have expected content, but [[${lines}]]")
  endif()
endforeach()
foreach(n 1 2 3)
  string(REGEX REPLACE "_1_\\.my\\.dat$" "_${n}_.my.dat" SeriesCFile "${SeriesC}")
  if(NOT EXISTS "${SeriesCFile}")
    message(SEND_ERROR "Input file:\n  ${SeriesCFile}\ndoes not exist!")
  endif()
endforeach()
