# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shawn/Codes/gmssl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shawn/Codes/gmssl/build

# Include any dependencies generated for this target.
include CMakeFiles/base64test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/base64test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/base64test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/base64test.dir/flags.make

CMakeFiles/base64test.dir/tests/base64test.c.o: CMakeFiles/base64test.dir/flags.make
CMakeFiles/base64test.dir/tests/base64test.c.o: ../tests/base64test.c
CMakeFiles/base64test.dir/tests/base64test.c.o: CMakeFiles/base64test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shawn/Codes/gmssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/base64test.dir/tests/base64test.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/base64test.dir/tests/base64test.c.o -MF CMakeFiles/base64test.dir/tests/base64test.c.o.d -o CMakeFiles/base64test.dir/tests/base64test.c.o -c /home/shawn/Codes/gmssl/tests/base64test.c

CMakeFiles/base64test.dir/tests/base64test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/base64test.dir/tests/base64test.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/shawn/Codes/gmssl/tests/base64test.c > CMakeFiles/base64test.dir/tests/base64test.c.i

CMakeFiles/base64test.dir/tests/base64test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/base64test.dir/tests/base64test.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/shawn/Codes/gmssl/tests/base64test.c -o CMakeFiles/base64test.dir/tests/base64test.c.s

# Object files for target base64test
base64test_OBJECTS = \
"CMakeFiles/base64test.dir/tests/base64test.c.o"

# External object files for target base64test
base64test_EXTERNAL_OBJECTS =

bin/base64test: CMakeFiles/base64test.dir/tests/base64test.c.o
bin/base64test: CMakeFiles/base64test.dir/build.make
bin/base64test: bin/libgmssl.so.3.1
bin/base64test: CMakeFiles/base64test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shawn/Codes/gmssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/base64test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/base64test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/base64test.dir/build: bin/base64test
.PHONY : CMakeFiles/base64test.dir/build

CMakeFiles/base64test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/base64test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/base64test.dir/clean

CMakeFiles/base64test.dir/depend:
	cd /home/shawn/Codes/gmssl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shawn/Codes/gmssl /home/shawn/Codes/gmssl /home/shawn/Codes/gmssl/build /home/shawn/Codes/gmssl/build /home/shawn/Codes/gmssl/build/CMakeFiles/base64test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/base64test.dir/depend

