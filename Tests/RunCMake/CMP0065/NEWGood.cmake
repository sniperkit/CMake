# Sniperkit-Bot
# - Status: analyzed

enable_language(C)
include(BuildTargetInSubProject.cmake)

BuildTargetInSubProject(TestPolicyCMP0065 FooNEWGood TRUE)
