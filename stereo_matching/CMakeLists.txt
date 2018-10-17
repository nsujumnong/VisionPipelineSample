cmake_minimum_required(VERSION 3.12)
project(stereo_matching)
find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )
set(CMAKE_CXX_STANDARD 11)

add_executable(stereo_matching main.cpp)
target_link_libraries( stereo_matching ${OpenCV_LIBS} )