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
include CMakeFiles/hextest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hextest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hextest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hextest.dir/flags.make

CMakeFiles/hextest.dir/tests/hextest.c.o: CMakeFiles/hextest.dir/flags.make
CMakeFiles/hextest.dir/tests/hextest.c.o: ../tests/hextest.c
CMakeFiles/hextest.dir/tests/hextest.c.o: CMakeFiles/hextest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shawn/Codes/gmssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hextest.dir/tests/hextest.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hextest.dir/tests/hextest.c.o -MF CMakeFiles/hextest.dir/tests/hextest.c.o.d -o CMakeFiles/hextest.dir/tests/hextest.c.o -c /home/shawn/Codes/gmssl/tests/hextest.c

CMakeFiles/hextest.dir/tests/hextest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hextest.dir/tests/hextest.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/shawn/Codes/gmssl/tests/hextest.c > CMakeFiles/hextest.dir/tests/hextest.c.i

CMakeFiles/hextest.dir/tests/hextest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hextest.dir/tests/hextest.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/shawn/Codes/gmssl/tests/hextest.c -o CMakeFiles/hextest.dir/tests/hextest.c.s

# Object files for target hextest
hextest_OBJECTS = \
"CMakeFiles/hextest.dir/tests/hextest.c.o"

# External object files for target hextest
hextest_EXTERNAL_OBJECTS =

bin/hextest: CMakeFiles/hextest.dir/tests/hextest.c.o
bin/hextest: CMakeFiles/hextest.dir/build.make
bin/hextest: bin/libgmssl.so.3.1
bin/hextest: CMakeFiles/hextest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shawn/Codes/gmssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/hextest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hextest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hextest.dir/build: bin/hextest
.PHONY : CMakeFiles/hextest.dir/build

CMakeFiles/hextest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hextest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hextest.dir/clean

CMakeFiles/hextest.dir/depend:
	cd /home/shawn/Codes/gmssl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shawn/Codes/gmssl /home/shawn/Codes/gmssl /home/shawn/Codes/gmssl/build /home/shawn/Codes/gmssl/build /home/shawn/Codes/gmssl/build/CMakeFiles/hextest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hextest.dir/depend

