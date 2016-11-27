cmake_minimum_required(VERSION 3.2.0 FATAL_ERROR)

project("fooproject" CXX)
set(PROJECT_VERSION 1.0.0)

# Including Library settings
include(cmake_modules/Project.cmake)

# Include header files
include_directories(include)

# Define target
add_library(${PROJECT_NAME} ${BUILD_TYPE} src/my_class.cpp)
generate_export_header(${PROJECT_NAME})
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 14)
set_property(TARGET ${PROJECT_NAME} PROPERTY VERSION ${PROJECT_VERSION})
set_property(TARGET ${PROJECT_NAME} PROPERTY SOVERSION ${PROJECT_VERSION})

# Define test
if(BUILD_TESTS)
  add_executable(${PROJECT_NAME}_test test/my_class_test.cpp)
  add_test(class_test ${PROJECT_NAME}_test)
  add_dependencies(${PROJECT_NAME}_test Doctest)
  target_link_libraries(${PROJECT_NAME}_test ${PROJECT_NAME})
endif(BUILD_TESTS)

# Define installation of target
install(TARGETS ${PROJECT_NAME}
  EXPORT ${PROJECT_NAME}
  RUNTIME DESTINATION bin
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  INCLUDES DESTINATION include/${PROJECT_NAME}
)

# Define installation of interface headers
install(
  FILES
   include/my_class.h
   "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}_export.h" 
  DESTINATION include/${PROJECT_NAME}
)

# Define export informations
install(EXPORT ${PROJECT_NAME}
  DESTINATION ${CMAKE_INSTALL_PREFIX}
  EXPORT_LINK_INTERFACE_LIBRARIES
)