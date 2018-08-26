# Sniperkit-Bot
# - Status: analyzed

include(RunCMake)

run_cmake(invalid_name)
run_cmake(target_commands)
run_cmake(no_shared_libs)
run_cmake(whitelist)
run_cmake(invalid_signature)
run_cmake(global-interface)
run_cmake(genex_link)
run_cmake(add_custom_command-TARGET)
run_cmake(IMPORTED_LIBNAME-bad-value)
run_cmake(IMPORTED_LIBNAME-non-iface)
run_cmake(IMPORTED_LIBNAME-non-imported)
