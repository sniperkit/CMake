# Sniperkit-Bot
# - Status: analyzed

include(ExternalProject)
set(source_dir "${CMAKE_CURRENT_BINARY_DIR}/SourceEmpty")
file(REMOVE_RECURSE "${source_dir}")
file(MAKE_DIRECTORY "${source_dir}")
ExternalProject_Add(MyProj SOURCE_DIR "${source_dir}")
