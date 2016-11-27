# foolibrary-cmake

This example shows how to set a CMake-based project, a library, using CMake facilities such as ExternalProject_Add and GenerateExportHeaders, to set the dependencies for our target and setting automatic export of symbols.

The test is built using the header-only library [Doctest](https://github.com/onqtam/doctest) v1.1.3, downloaded at build time with CMake - so please be sure to have an internet connection while running this example.

# How to build the code

You have the choice to build a shared or a static library, by setting the CMake option *BUILD_SHARED_LIBS* and it's possible to define the install prefix with *CMAKE_INSTALL_PREFIX* (the installation directory, which is by default /usr/ in Linux and C:\Program Files in Windows).

The generation of test is enabled by default, but it can be turned off by setting *BUILD_TESTS* to OFF.

Type in your command line terminal (e.g. in Linux):

`cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=$(pwd)/install ..`

and then

`cmake --build .`

If you want to create a compressed package, you can use CPack:

`cpack`

If you want to run the test, just type:

`ctest`