# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)

run_cmake(InvalidArgs)
run_cmake(NoCompiler)
run_cmake(NoFeature)
run_cmake(FileTypo)
run_cmake(PrefixTypo)
run_cmake(ExtraArgs)
run_cmake(OldVersion)
run_cmake(InvalidCompiler)
run_cmake(InvalidFeature)
run_cmake(InvalidCXXFeature)
run_cmake(EmptyPrefix)
run_cmake(InvalidPrefix)
run_cmake(MultiNoOutdir)
run_cmake(MultiNoOutFileVar)
set(NO_CACHE TRUE)
run_cmake(MultiBadOutDir)
