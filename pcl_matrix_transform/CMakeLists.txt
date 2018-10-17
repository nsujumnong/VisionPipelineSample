cmake_minimum_required(VERSION 3.12)
project(pcl_matrix_transform)

find_package(PCL 1.8 REQUIRED)

set(CMAKE_CXX_STANDARD 11)

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable(pcl_matrix_transform main.cpp)
target_link_libraries(pcl_matrix_transform ${PCL_LIBRARIES})