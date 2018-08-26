# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)

run_cmake(CMP0023-WARN)
run_cmake(CMP0023-NEW)
run_cmake(CMP0023-WARN-2)
run_cmake(CMP0023-NEW-2)
run_cmake(ImportedTarget)
run_cmake(ImportedTargetFailure)
run_cmake(MixedSignature)
run_cmake(Separate-PRIVATE-LINK_PRIVATE-uses)
run_cmake(SubDirTarget)
run_cmake(SharedDepNotTarget)
run_cmake(StaticPrivateDepNotExported)
run_cmake(StaticPrivateDepNotTarget)
run_cmake(UNKNOWN-IMPORTED-GLOBAL)
