cmake_minimum_required(VERSION 3.12)
project(calibration)
find_package( OpenCV REQUIRED )
set(CMAKE_CXX_STANDARD 11)

add_executable(calibration main.cpp)
target_link_libraries( calibration ${OpenCV_LIBS} )