# Sniperkit-Bot
# - Status: analyzed

getProjectNames(projects)
list(GET projects 0 first_project)
if(NOT first_project STREQUAL "ALL_BUILD")
  error("ALL_BUILD is not the startup project")
endif()
