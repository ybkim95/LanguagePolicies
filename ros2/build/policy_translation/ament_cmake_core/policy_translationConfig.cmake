# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_policy_translation_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED policy_translation_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(policy_translation_FOUND FALSE)
  elseif(NOT policy_translation_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(policy_translation_FOUND FALSE)
  endif()
  return()
endif()
set(_policy_translation_CONFIG_INCLUDED TRUE)

# output package information
if(NOT policy_translation_FIND_QUIETLY)
  message(STATUS "Found policy_translation: 0.0.0 (${policy_translation_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'policy_translation' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message(WARNING "${_msg}")
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(policy_translation_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "rosidl_cmake-extras.cmake;ament_cmake_export_dependencies-extras.cmake;ament_cmake_export_libraries-extras.cmake;ament_cmake_export_include_directories-extras.cmake")
foreach(_extra ${_extras})
  include("${policy_translation_DIR}/${_extra}")
endforeach()
