# Enable ctest
enable_testing()

# Use ExternalProject_Add facility
include(ExternalProject)

# Define settings
set(DOCTEST_VERSION "1.1.3")
set(DOCTEST_ROOT ${CMAKE_BINARY_DIR}/doctest)

# Download doctest
ExternalProject_Add(
    Doctest
    PREFIX            ${DOCTEST_ROOT}
    TMP_DIR           ${DOCTEST_ROOT}/temp
    STAMP_DIR         ${DOCTEST_ROOT}/stamp
    #--Download step--------------
    DOWNLOAD_DIR      ${DOCTEST_ROOT}/download
    URL               "https://github.com/onqtam/doctest/archive/${DOCTEST_VERSION}.zip"
    URL_HASH          SHA1=cdcb33d3d311f1eeca81e03bfeb50cbbcfe9d6c3
    #--Configure step-------------
    SOURCE_DIR        ${DOCTEST_ROOT}/source
    CONFIGURE_COMMAND ""
    #--Build step-------------
    BUILD_COMMAND     ""
    BUILD_IN_SOURCE   1
    #--Install step---------------
    INSTALL_COMMAND   ""
    INSTALL_DIR       ""
)

include_directories(${DOCTEST_ROOT}/source)