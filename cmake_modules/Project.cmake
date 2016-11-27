# Set CMake options given by User
option(BUILD_SHARED_LIBS "Build Shared libraries" OFF)
option(BUILD_TESTS "Build test cases" ON)
option(CMAKE_CXX_STANDARD_REQUIRED "Set the C++ standard set as required" OFF)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_INCLUDE_CURRENT_DIR_IN_INTERFACE ON)

# Define build type
set(BUILD_TYPE STATIC)
if(BUILD_SHARED_LIBS)
  set(BUILD_TYPE SHARED)
endif(BUILD_SHARED_LIBS)

# Include Export header capability
include(GenerateExportHeader)

# Activate testing
if(BUILD_TESTS)
  include(${CMAKE_SOURCE_DIR}/cmake_modules/test.cmake)
endif(BUILD_TESTS)

include(${CMAKE_SOURCE_DIR}/cmake_modules/cpack.cmake)