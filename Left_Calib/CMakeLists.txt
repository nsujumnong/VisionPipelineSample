cmake_minimum_required(VERSION 3.12)
project(Left_Calib)
find_package( OpenCV REQUIRED)
set(CMAKE_CXX_STANDARD 11)

add_executable(Left_Calib main.cpp)

target_link_libraries(Left_Calib ${OpenCV_LIBS})