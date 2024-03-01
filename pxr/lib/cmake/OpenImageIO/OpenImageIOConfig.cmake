
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

include(CMakeFindDependencyMacro)

# add here all the find_dependency() whenever switching to config based dependencies
if (3.1.11 VERSION_GREATER_EQUAL 3.0)
    find_dependency(Imath 3.1.9
                    HINTS F:/Projects/Compiling/USD/build_24.03_mtlx_v1.38.9/install/lib/cmake/Imath)
elseif (3.1.11 VERSION_GREATER_EQUAL 2.4 AND 1)
    find_dependency(IlmBase 3.1.11
                    HINTS  F:/Projects/Compiling/USD/build_24.03_mtlx_v1.38.9/install/lib/cmake/OpenEXR)
    find_dependency(OpenEXR 3.1.11
                    HINTS F:/Projects/Compiling/USD/build_24.03_mtlx_v1.38.9/install/lib/cmake/OpenEXR)
    find_dependency(ZLIB 1.2.13)  # Because OpenEXR doesn't do it
    find_dependency(Threads)  # Because OpenEXR doesn't do it
endif ()

set_and_check (OpenImageIO_INCLUDE_DIR "F:/Projects/Compiling/USD/build_24.03_mtlx_v1.38.9/install/include")
set_and_check (OpenImageIO_INCLUDES    "F:/Projects/Compiling/USD/build_24.03_mtlx_v1.38.9/install/include")
set_and_check (OpenImageIO_LIB_DIR     "F:/Projects/Compiling/USD/build_24.03_mtlx_v1.38.9/install/lib")
set (OpenImageIO_PLUGIN_SEARCH_PATH    "")

if (NOT 1)
    list (APPEND OpenImageIO_INCLUDES ${IMATH_INCLUDES} ${OPENEXR_INCLUDES})
endif ()

#...logic to determine installedPrefix from the own location...
#set (OpenImageIO_CONFIG_DIR  "${installedPrefix}/")

include ("${CMAKE_CURRENT_LIST_DIR}/OpenImageIOTargets.cmake")

check_required_components ("OpenImageIO")

# Set a CMake variable that says if this OpenImageIO build has OCIO support
set (OpenImageIO_HAS_OpenColorIO 0)
