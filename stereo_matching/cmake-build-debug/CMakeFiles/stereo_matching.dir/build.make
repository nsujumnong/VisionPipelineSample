# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/aimlab3/clion-2018.2.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/aimlab3/clion-2018.2.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aimlab3/CLionProjects/stereo_matching

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aimlab3/CLionProjects/stereo_matching/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/stereo_matching.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stereo_matching.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stereo_matching.dir/flags.make

CMakeFiles/stereo_matching.dir/main.cpp.o: CMakeFiles/stereo_matching.dir/flags.make
CMakeFiles/stereo_matching.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aimlab3/CLionProjects/stereo_matching/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stereo_matching.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stereo_matching.dir/main.cpp.o -c /home/aimlab3/CLionProjects/stereo_matching/main.cpp

CMakeFiles/stereo_matching.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stereo_matching.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aimlab3/CLionProjects/stereo_matching/main.cpp > CMakeFiles/stereo_matching.dir/main.cpp.i

CMakeFiles/stereo_matching.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stereo_matching.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aimlab3/CLionProjects/stereo_matching/main.cpp -o CMakeFiles/stereo_matching.dir/main.cpp.s

# Object files for target stereo_matching
stereo_matching_OBJECTS = \
"CMakeFiles/stereo_matching.dir/main.cpp.o"

# External object files for target stereo_matching
stereo_matching_EXTERNAL_OBJECTS =

stereo_matching: CMakeFiles/stereo_matching.dir/main.cpp.o
stereo_matching: CMakeFiles/stereo_matching.dir/build.make
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
stereo_matching: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
stereo_matching: CMakeFiles/stereo_matching.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aimlab3/CLionProjects/stereo_matching/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stereo_matching"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stereo_matching.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stereo_matching.dir/build: stereo_matching

.PHONY : CMakeFiles/stereo_matching.dir/build

CMakeFiles/stereo_matching.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stereo_matching.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stereo_matching.dir/clean

CMakeFiles/stereo_matching.dir/depend:
	cd /home/aimlab3/CLionProjects/stereo_matching/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aimlab3/CLionProjects/stereo_matching /home/aimlab3/CLionProjects/stereo_matching /home/aimlab3/CLionProjects/stereo_matching/cmake-build-debug /home/aimlab3/CLionProjects/stereo_matching/cmake-build-debug /home/aimlab3/CLionProjects/stereo_matching/cmake-build-debug/CMakeFiles/stereo_matching.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stereo_matching.dir/depend
