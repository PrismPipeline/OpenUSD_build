#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "OpenColorIO::OpenColorIO" for configuration "Release"
set_property(TARGET OpenColorIO::OpenColorIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenColorIO::OpenColorIO PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/OpenColorIO.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Imath::Imath"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/OpenColorIO_2_1.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenColorIO::OpenColorIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenColorIO::OpenColorIO "${_IMPORT_PREFIX}/lib/OpenColorIO.lib" "${_IMPORT_PREFIX}/bin/OpenColorIO_2_1.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
