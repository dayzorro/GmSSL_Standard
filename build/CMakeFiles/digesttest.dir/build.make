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
include CMakeFiles/digesttest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/digesttest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/digesttest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/digesttest.dir/flags.make

CMakeFiles/digesttest.dir/tests/digesttest.c.o: CMakeFiles/digesttest.dir/flags.make
CMakeFiles/digesttest.dir/tests/digesttest.c.o: ../tests/digesttest.c
CMakeFiles/digesttest.dir/tests/digesttest.c.o: CMakeFiles/digesttest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shawn/Codes/gmssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/digesttest.dir/tests/digesttest.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/digesttest.dir/tests/digesttest.c.o -MF CMakeFiles/digesttest.dir/tests/digesttest.c.o.d -o CMakeFiles/digesttest.dir/tests/digesttest.c.o -c /home/shawn/Codes/gmssl/tests/digesttest.c

CMakeFiles/digesttest.dir/tests/digesttest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/digesttest.dir/tests/digesttest.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/shawn/Codes/gmssl/tests/digesttest.c > CMakeFiles/digesttest.dir/tests/digesttest.c.i

CMakeFiles/digesttest.dir/tests/digesttest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/digesttest.dir/tests/digesttest.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/shawn/Codes/gmssl/tests/digesttest.c -o CMakeFiles/digesttest.dir/tests/digesttest.c.s

# Object files for target digesttest
digesttest_OBJECTS = \
"CMakeFiles/digesttest.dir/tests/digesttest.c.o"

# External object files for target digesttest
digesttest_EXTERNAL_OBJECTS =

bin/digesttest: CMakeFiles/digesttest.dir/tests/digesttest.c.o
bin/digesttest: CMakeFiles/digesttest.dir/build.make
bin/digesttest: bin/libgmssl.so.3.1
bin/digesttest: CMakeFiles/digesttest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shawn/Codes/gmssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/digesttest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/digesttest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/digesttest.dir/build: bin/digesttest
.PHONY : CMakeFiles/digesttest.dir/build

CMakeFiles/digesttest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/digesttest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/digesttest.dir/clean

CMakeFiles/digesttest.dir/depend:
	cd /home/shawn/Codes/gmssl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shawn/Codes/gmssl /home/shawn/Codes/gmssl /home/shawn/Codes/gmssl/build /home/shawn/Codes/gmssl/build /home/shawn/Codes/gmssl/build/CMakeFiles/digesttest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/digesttest.dir/depend

