# Sniperkit-Bot
# - Status: analyzed

getProjectNames(projects)
list(GET projects 0 first_project)
if(NOT first_project STREQUAL "CMakePredefinedTargets")
  error("CMakePredefinedTargets is not the first project")
endif()
list(GET projects 1 second_project)
if(NOT second_project STREQUAL "TestStartup")
  error("TestStartup does not immediately follow the CMakePredefinedTargets project")
endif()
