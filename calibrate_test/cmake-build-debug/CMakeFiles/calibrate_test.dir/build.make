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
CMAKE_SOURCE_DIR = /home/aimlab3/CLionProjects/calibrate_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aimlab3/CLionProjects/calibrate_test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/calibrate_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/calibrate_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calibrate_test.dir/flags.make

CMakeFiles/calibrate_test.dir/main.cpp.o: CMakeFiles/calibrate_test.dir/flags.make
CMakeFiles/calibrate_test.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aimlab3/CLionProjects/calibrate_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/calibrate_test.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/calibrate_test.dir/main.cpp.o -c /home/aimlab3/CLionProjects/calibrate_test/main.cpp

CMakeFiles/calibrate_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calibrate_test.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aimlab3/CLionProjects/calibrate_test/main.cpp > CMakeFiles/calibrate_test.dir/main.cpp.i

CMakeFiles/calibrate_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calibrate_test.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aimlab3/CLionProjects/calibrate_test/main.cpp -o CMakeFiles/calibrate_test.dir/main.cpp.s

# Object files for target calibrate_test
calibrate_test_OBJECTS = \
"CMakeFiles/calibrate_test.dir/main.cpp.o"

# External object files for target calibrate_test
calibrate_test_EXTERNAL_OBJECTS =

calibrate_test: CMakeFiles/calibrate_test.dir/main.cpp.o
calibrate_test: CMakeFiles/calibrate_test.dir/build.make
calibrate_test: CMakeFiles/calibrate_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aimlab3/CLionProjects/calibrate_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable calibrate_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calibrate_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calibrate_test.dir/build: calibrate_test

.PHONY : CMakeFiles/calibrate_test.dir/build

CMakeFiles/calibrate_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calibrate_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calibrate_test.dir/clean

CMakeFiles/calibrate_test.dir/depend:
	cd /home/aimlab3/CLionProjects/calibrate_test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aimlab3/CLionProjects/calibrate_test /home/aimlab3/CLionProjects/calibrate_test /home/aimlab3/CLionProjects/calibrate_test/cmake-build-debug /home/aimlab3/CLionProjects/calibrate_test/cmake-build-debug /home/aimlab3/CLionProjects/calibrate_test/cmake-build-debug/CMakeFiles/calibrate_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/calibrate_test.dir/depend

