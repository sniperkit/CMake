# Sniperkit-Bot
# - Status: analyzed

getProjectNames(projects)
list(GET projects 0 first_project)
if(NOT first_project STREQUAL "TestStartup")
  error("TestStartup is not the startup project")
endif()
