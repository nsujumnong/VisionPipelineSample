cmake_minimum_required(VERSION 3.12)
project(Right_Calib)
find_package( OpenCV REQUIRED)
set(CMAKE_CXX_STANDARD 11)

add_executable(Right_Calib main.cpp)

target_link_libraries(Right_Calib ${OpenCV_LIBS})