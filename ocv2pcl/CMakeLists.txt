cmake_minimum_required(VERSION 3.12)
project(ocv2pcl)
find_package( PCL 1.8 REQUIRED )
find_package( OpenCV REQUIRED )
set(CMAKE_CXX_STANDARD 11)

include_directories(${PCL_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable(ocv2pcl main.cpp)
target_link_libraries( ocv2pcl ${PCL_LIBRARIES} ${OpenCV_LIBS})