# Sniperkit-Bot
# - Status: analyzed


# Based on GNU 4.8.2
# https://docs.oracle.com/cd/E37069_01/html/E37071/gncix.html
# https://docs.oracle.com/cd/E77782_01/html/E77784/gkeza.html
# Reference: http://gcc.gnu.org/projects/cxx0x.html

set(_cmake_oldestSupported "__SUNPRO_CC >= 0x5130")

set(SolarisStudio126_CXX11 "(__SUNPRO_CC >= 0x5150) && __cplusplus >= 201103L")
set(_cmake_feature_test_cxx_decltype_auto "${SolarisStudio126_CXX11}")

set(SolarisStudio125_CXX11 "(__SUNPRO_CC >= 0x5140) && __cplusplus >= 201103L")
set(_cmake_feature_test_cxx_binary_literals "${SolarisStudio125_CXX11}")
set(_cmake_feature_test_cxx_reference_qualified_functions "${SolarisStudio125_CXX11}")

set(SolarisStudio124_CXX11 "(__SUNPRO_CC >= 0x5130) && __cplusplus >= 201103L")
set(_cmake_feature_test_cxx_alignas "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_alignof "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_attributes "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_inheriting_constructors "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_thread_local "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_alias_templates "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_delegating_constructors "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_extended_friend_declarations "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_final "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_noexcept "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_nonstatic_member_init "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_override "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_constexpr "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_defaulted_move_initializers "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_enum_forward_declarations "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_nullptr "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_range_for "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_unrestricted_unions "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_explicit_conversions "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_lambdas "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_local_type_template_args "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_raw_string_literals "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_auto_type "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_defaulted_functions "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_deleted_functions "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_generalized_initializers "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_inline_namespaces "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_sizeof_member "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_strong_enums "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_trailing_return_types "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_unicode_literals "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_uniform_initialization "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_variadic_templates "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_decltype "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_default_function_template_args "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_long_long_type "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_right_angle_brackets "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_rvalue_references "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_static_assert "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_extern_templates "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_func_identifier "${SolarisStudio124_CXX11}")
set(_cmake_feature_test_cxx_variadic_macros "${SolarisStudio124_CXX11}")

set(_cmake_feature_test_cxx_template_template_parameters "${_cmake_oldestSupported} && __cplusplus")
