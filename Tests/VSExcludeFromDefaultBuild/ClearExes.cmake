# Sniperkit-Bot
# - Status: analyzed

file(GLOB exeFiles "${dir}/*.exe")
foreach(exeFile IN LISTS exeFiles)
  file(REMOVE "${exeFile}")
endforeach()
file(GLOB exeFiles "${dir}/install/*.exe")
foreach(exeFile IN LISTS exeFiles)
  file(REMOVE "${exeFile}")
endforeach()
