# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)

run_cmake(no-targets)
run_cmake(multiple-targets)
run_cmake(exclude-from-all)
run_cmake(imported)
run_cmake(invalid-name)
run_cmake(invalid-target)
run_cmake(imported-global-target)
run_cmake(imported-target)
run_cmake(alias-target)
run_cmake(set_property)
run_cmake(set_target_properties)
run_cmake(target_link_libraries)
run_cmake(target_include_directories)
run_cmake(export)
run_cmake(install-export)
run_cmake(name-conflict)
run_cmake(add_dependencies)
run_cmake(add_executable-library)
run_cmake(add_library-executable)
