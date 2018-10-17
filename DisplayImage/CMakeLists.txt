cmake_minimum_required(VERSION 3.12)
project(DisplayImage)
find_package( OpenCV REQUIRED )
set(CMAKE_CXX_STANDARD 11)

add_executable(DisplayImage main.cpp)
target_link_libraries( DisplayImage ${OpenCV_LIBS})