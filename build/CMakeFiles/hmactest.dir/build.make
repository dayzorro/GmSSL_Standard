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
include CMakeFiles/hmactest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hmactest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hmactest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hmactest.dir/flags.make

CMakeFiles/hmactest.dir/tests/hmactest.c.o: CMakeFiles/hmactest.dir/flags.make
CMakeFiles/hmactest.dir/tests/hmactest.c.o: ../tests/hmactest.c
CMakeFiles/hmactest.dir/tests/hmactest.c.o: CMakeFiles/hmactest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shawn/Codes/gmssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hmactest.dir/tests/hmactest.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hmactest.dir/tests/hmactest.c.o -MF CMakeFiles/hmactest.dir/tests/hmactest.c.o.d -o CMakeFiles/hmactest.dir/tests/hmactest.c.o -c /home/shawn/Codes/gmssl/tests/hmactest.c

CMakeFiles/hmactest.dir/tests/hmactest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hmactest.dir/tests/hmactest.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/shawn/Codes/gmssl/tests/hmactest.c > CMakeFiles/hmactest.dir/tests/hmactest.c.i

CMakeFiles/hmactest.dir/tests/hmactest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hmactest.dir/tests/hmactest.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/shawn/Codes/gmssl/tests/hmactest.c -o CMakeFiles/hmactest.dir/tests/hmactest.c.s

# Object files for target hmactest
hmactest_OBJECTS = \
"CMakeFiles/hmactest.dir/tests/hmactest.c.o"

# External object files for target hmactest
hmactest_EXTERNAL_OBJECTS =

bin/hmactest: CMakeFiles/hmactest.dir/tests/hmactest.c.o
bin/hmactest: CMakeFiles/hmactest.dir/build.make
bin/hmactest: bin/libgmssl.so.3.1
bin/hmactest: CMakeFiles/hmactest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shawn/Codes/gmssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/hmactest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hmactest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hmactest.dir/build: bin/hmactest
.PHONY : CMakeFiles/hmactest.dir/build

CMakeFiles/hmactest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hmactest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hmactest.dir/clean

CMakeFiles/hmactest.dir/depend:
	cd /home/shawn/Codes/gmssl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shawn/Codes/gmssl /home/shawn/Codes/gmssl /home/shawn/Codes/gmssl/build /home/shawn/Codes/gmssl/build /home/shawn/Codes/gmssl/build/CMakeFiles/hmactest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hmactest.dir/depend

