# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dallinhagman/CLionProjects/PlanetRenderer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug

# Include any dependencies generated for this target.
include vendor/FastNoise/src/CMakeFiles/FastNoise.dir/depend.make

# Include the progress variables for this target.
include vendor/FastNoise/src/CMakeFiles/FastNoise.dir/progress.make

# Include the compile flags for this target's objects.
include vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.o: ../vendor/FastNoise/src/FastNoise/FastNoiseMetadata.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastNoise/FastNoiseMetadata.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastNoise/FastNoiseMetadata.cpp > CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastNoise/FastNoiseMetadata.cpp -o CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_AVX2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mavx2 -mfma -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_AVX2.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mavx2 -mfma -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_AVX2.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mavx2 -mfma -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_AVX2.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_AVX512.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mavx512f -mavx512dq -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_AVX512.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mavx512f -mavx512dq -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_AVX512.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mavx512f -mavx512dq -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_AVX512.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_NEON.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_NEON.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_NEON.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_NEON.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_Scalar.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_Scalar.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_Scalar.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_Scalar.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE2.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE2.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE2.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse3 -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE3.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse3 -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE3.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse3 -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE3.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE41.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse4.1 -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE41.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse4.1 -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE41.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse4.1 -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE41.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE42.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse4.2 -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE42.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse4.2 -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE42.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse4.2 -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSE42.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.s

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.o: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/flags.make
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.o: ../vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSSE3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.o"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mssse3 -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.o -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSSE3.cpp

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.i"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mssse3 -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSSE3.cpp > CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.i

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.s"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -mssse3 -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src/FastSIMD/FastSIMD_Level_SSSE3.cpp -o CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.s

# Object files for target FastNoise
FastNoise_OBJECTS = \
"CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.o" \
"CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.o"

# External object files for target FastNoise
FastNoise_EXTERNAL_OBJECTS =

vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastNoise/FastNoiseMetadata.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX2.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_AVX512.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_NEON.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_Scalar.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE2.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE3.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE41.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSE42.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/FastSIMD/FastSIMD_Level_SSSE3.cpp.o
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/build.make
vendor/FastNoise/src/libFastNoise.a: vendor/FastNoise/src/CMakeFiles/FastNoise.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX static library libFastNoise.a"
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && $(CMAKE_COMMAND) -P CMakeFiles/FastNoise.dir/cmake_clean_target.cmake
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FastNoise.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vendor/FastNoise/src/CMakeFiles/FastNoise.dir/build: vendor/FastNoise/src/libFastNoise.a

.PHONY : vendor/FastNoise/src/CMakeFiles/FastNoise.dir/build

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/clean:
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src && $(CMAKE_COMMAND) -P CMakeFiles/FastNoise.dir/cmake_clean.cmake
.PHONY : vendor/FastNoise/src/CMakeFiles/FastNoise.dir/clean

vendor/FastNoise/src/CMakeFiles/FastNoise.dir/depend:
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dallinhagman/CLionProjects/PlanetRenderer /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/FastNoise/src /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/vendor/FastNoise/src/CMakeFiles/FastNoise.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vendor/FastNoise/src/CMakeFiles/FastNoise.dir/depend

