# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dallinhagman/CLionProjects/PlanetRenderer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Glad.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Glad.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Glad.dir/flags.make

CMakeFiles/Glad.dir/vendor/glad/src/glad.c.o: CMakeFiles/Glad.dir/flags.make
CMakeFiles/Glad.dir/vendor/glad/src/glad.c.o: ../vendor/glad/src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Glad.dir/vendor/glad/src/glad.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Glad.dir/vendor/glad/src/glad.c.o   -c /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/glad/src/glad.c

CMakeFiles/Glad.dir/vendor/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Glad.dir/vendor/glad/src/glad.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/glad/src/glad.c > CMakeFiles/Glad.dir/vendor/glad/src/glad.c.i

CMakeFiles/Glad.dir/vendor/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Glad.dir/vendor/glad/src/glad.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/dallinhagman/CLionProjects/PlanetRenderer/vendor/glad/src/glad.c -o CMakeFiles/Glad.dir/vendor/glad/src/glad.c.s

# Object files for target Glad
Glad_OBJECTS = \
"CMakeFiles/Glad.dir/vendor/glad/src/glad.c.o"

# External object files for target Glad
Glad_EXTERNAL_OBJECTS =

libGlad.a: CMakeFiles/Glad.dir/vendor/glad/src/glad.c.o
libGlad.a: CMakeFiles/Glad.dir/build.make
libGlad.a: CMakeFiles/Glad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libGlad.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Glad.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Glad.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Glad.dir/build: libGlad.a

.PHONY : CMakeFiles/Glad.dir/build

CMakeFiles/Glad.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Glad.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Glad.dir/clean

CMakeFiles/Glad.dir/depend:
	cd /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dallinhagman/CLionProjects/PlanetRenderer /Users/dallinhagman/CLionProjects/PlanetRenderer /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug /Users/dallinhagman/CLionProjects/PlanetRenderer/cmake-build-debug/CMakeFiles/Glad.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Glad.dir/depend

