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
CMAKE_COMMAND = /opt/clion-2020.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2020.2.4/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jason/splisplash

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jason/splisplash/cmake-build-debug

# Include any dependencies generated for this target.
include extern/glew/CMakeFiles/glew.dir/depend.make

# Include the progress variables for this target.
include extern/glew/CMakeFiles/glew.dir/progress.make

# Include the compile flags for this target's objects.
include extern/glew/CMakeFiles/glew.dir/flags.make

extern/glew/CMakeFiles/glew.dir/src/glew.c.o: extern/glew/CMakeFiles/glew.dir/flags.make
extern/glew/CMakeFiles/glew.dir/src/glew.c.o: ../extern/glew/src/glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/splisplash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object extern/glew/CMakeFiles/glew.dir/src/glew.c.o"
	cd /home/jason/splisplash/cmake-build-debug/extern/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glew.dir/src/glew.c.o   -c /home/jason/splisplash/extern/glew/src/glew.c

extern/glew/CMakeFiles/glew.dir/src/glew.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glew.dir/src/glew.c.i"
	cd /home/jason/splisplash/cmake-build-debug/extern/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jason/splisplash/extern/glew/src/glew.c > CMakeFiles/glew.dir/src/glew.c.i

extern/glew/CMakeFiles/glew.dir/src/glew.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glew.dir/src/glew.c.s"
	cd /home/jason/splisplash/cmake-build-debug/extern/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jason/splisplash/extern/glew/src/glew.c -o CMakeFiles/glew.dir/src/glew.c.s

# Object files for target glew
glew_OBJECTS = \
"CMakeFiles/glew.dir/src/glew.c.o"

# External object files for target glew
glew_EXTERNAL_OBJECTS =

lib/libglew_d.so: extern/glew/CMakeFiles/glew.dir/src/glew.c.o
lib/libglew_d.so: extern/glew/CMakeFiles/glew.dir/build.make
lib/libglew_d.so: extern/glew/CMakeFiles/glew.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jason/splisplash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library ../../lib/libglew_d.so"
	cd /home/jason/splisplash/cmake-build-debug/extern/glew && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glew.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/glew/CMakeFiles/glew.dir/build: lib/libglew_d.so

.PHONY : extern/glew/CMakeFiles/glew.dir/build

extern/glew/CMakeFiles/glew.dir/clean:
	cd /home/jason/splisplash/cmake-build-debug/extern/glew && $(CMAKE_COMMAND) -P CMakeFiles/glew.dir/cmake_clean.cmake
.PHONY : extern/glew/CMakeFiles/glew.dir/clean

extern/glew/CMakeFiles/glew.dir/depend:
	cd /home/jason/splisplash/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/splisplash /home/jason/splisplash/extern/glew /home/jason/splisplash/cmake-build-debug /home/jason/splisplash/cmake-build-debug/extern/glew /home/jason/splisplash/cmake-build-debug/extern/glew/CMakeFiles/glew.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extern/glew/CMakeFiles/glew.dir/depend

