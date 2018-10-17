cmake_minimum_required(VERSION 3.12)
project(stereo_calib)
find_package( OpenCV REQUIRED)
set(CMAKE_CXX_STANDARD 11)

add_executable(stereo_calib main.cpp)
target_link_libraries(stereo_calib ${OpenCV_LIBS})