# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)

run_cmake(BadSelfReference)
run_cmake(BadNonTarget)
run_cmake(BadInvalidName)
run_cmake(LinkImplementationCycle1)
run_cmake(LinkImplementationCycle2)
run_cmake(LinkImplementationCycle3)
run_cmake(LinkImplementationCycle4)
run_cmake(LinkImplementationCycle5)
run_cmake(LinkImplementationCycle6)
