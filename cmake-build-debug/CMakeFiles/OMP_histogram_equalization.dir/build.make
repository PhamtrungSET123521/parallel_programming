# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/OMP_histogram_equalization.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OMP_histogram_equalization.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OMP_histogram_equalization.dir/flags.make

CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o: CMakeFiles/OMP_histogram_equalization.dir/flags.make
CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o"
	/usr/local/Cellar/llvm/6.0.0/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o -c /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/main.cpp

CMakeFiles/OMP_histogram_equalization.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OMP_histogram_equalization.dir/main.cpp.i"
	/usr/local/Cellar/llvm/6.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/main.cpp > CMakeFiles/OMP_histogram_equalization.dir/main.cpp.i

CMakeFiles/OMP_histogram_equalization.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OMP_histogram_equalization.dir/main.cpp.s"
	/usr/local/Cellar/llvm/6.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/main.cpp -o CMakeFiles/OMP_histogram_equalization.dir/main.cpp.s

CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o.requires

CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o.provides: CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/OMP_histogram_equalization.dir/build.make CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o.provides

CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o.provides.build: CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o


# Object files for target OMP_histogram_equalization
OMP_histogram_equalization_OBJECTS = \
"CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o"

# External object files for target OMP_histogram_equalization
OMP_histogram_equalization_EXTERNAL_OBJECTS =

OMP_histogram_equalization: CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o
OMP_histogram_equalization: CMakeFiles/OMP_histogram_equalization.dir/build.make
OMP_histogram_equalization: /usr/local/lib/libopencv_stitching.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_superres.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_videostab.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_aruco.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_bgsegm.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_bioinspired.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_ccalib.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_dnn_objdetect.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_dpm.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_face.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_fuzzy.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_hfs.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_img_hash.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_line_descriptor.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_optflow.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_reg.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_rgbd.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_saliency.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_stereo.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_structured_light.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_surface_matching.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_tracking.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_xfeatures2d.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_ximgproc.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_xobjdetect.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_xphoto.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_shape.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_photo.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_dnn.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_datasets.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_ml.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_plot.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_video.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_calib3d.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_features2d.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_highgui.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_videoio.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_phase_unwrapping.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_flann.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_imgcodecs.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_objdetect.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_imgproc.3.4.1.dylib
OMP_histogram_equalization: /usr/local/lib/libopencv_core.3.4.1.dylib
OMP_histogram_equalization: CMakeFiles/OMP_histogram_equalization.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OMP_histogram_equalization"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OMP_histogram_equalization.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OMP_histogram_equalization.dir/build: OMP_histogram_equalization

.PHONY : CMakeFiles/OMP_histogram_equalization.dir/build

CMakeFiles/OMP_histogram_equalization.dir/requires: CMakeFiles/OMP_histogram_equalization.dir/main.cpp.o.requires

.PHONY : CMakeFiles/OMP_histogram_equalization.dir/requires

CMakeFiles/OMP_histogram_equalization.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OMP_histogram_equalization.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OMP_histogram_equalization.dir/clean

CMakeFiles/OMP_histogram_equalization.dir/depend:
	cd /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/cmake-build-debug /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/cmake-build-debug /Users/francesco/Documents/Universit√†/magistrale/esami/Parallel_Computing/Parallel-Histogram-Equalization/OMP_histogram_equalization/cmake-build-debug/CMakeFiles/OMP_histogram_equalization.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OMP_histogram_equalization.dir/depend

