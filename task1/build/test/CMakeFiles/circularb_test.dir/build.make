# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/ezhsluny/Documents/C++/task1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ezhsluny/Documents/C++/task1/build

# Include any dependencies generated for this target.
include test/CMakeFiles/circularb_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/circularb_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/circularb_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/circularb_test.dir/flags.make

test/CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o: test/CMakeFiles/circularb_test.dir/flags.make
test/CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o: /home/ezhsluny/Documents/C++/task1/test/circ_buff_test.cpp
test/CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o: test/CMakeFiles/circularb_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ezhsluny/Documents/C++/task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o"
	cd /home/ezhsluny/Documents/C++/task1/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o -MF CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o.d -o CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o -c /home/ezhsluny/Documents/C++/task1/test/circ_buff_test.cpp

test/CMakeFiles/circularb_test.dir/circ_buff_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/circularb_test.dir/circ_buff_test.cpp.i"
	cd /home/ezhsluny/Documents/C++/task1/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ezhsluny/Documents/C++/task1/test/circ_buff_test.cpp > CMakeFiles/circularb_test.dir/circ_buff_test.cpp.i

test/CMakeFiles/circularb_test.dir/circ_buff_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/circularb_test.dir/circ_buff_test.cpp.s"
	cd /home/ezhsluny/Documents/C++/task1/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ezhsluny/Documents/C++/task1/test/circ_buff_test.cpp -o CMakeFiles/circularb_test.dir/circ_buff_test.cpp.s

# Object files for target circularb_test
circularb_test_OBJECTS = \
"CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o"

# External object files for target circularb_test
circularb_test_EXTERNAL_OBJECTS =

test/circularb_test: test/CMakeFiles/circularb_test.dir/circ_buff_test.cpp.o
test/circularb_test: test/CMakeFiles/circularb_test.dir/build.make
test/circularb_test: test/CMakeFiles/circularb_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ezhsluny/Documents/C++/task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable circularb_test"
	cd /home/ezhsluny/Documents/C++/task1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/circularb_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ezhsluny/Documents/C++/task1/build/test && /usr/bin/cmake -D TEST_TARGET=circularb_test -D TEST_EXECUTABLE=/home/ezhsluny/Documents/C++/task1/build/test/circularb_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/ezhsluny/Documents/C++/task1/build/test -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=circularb_test_TESTS -D CTEST_FILE=/home/ezhsluny/Documents/C++/task1/build/test/circularb_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.28/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
test/CMakeFiles/circularb_test.dir/build: test/circularb_test
.PHONY : test/CMakeFiles/circularb_test.dir/build

test/CMakeFiles/circularb_test.dir/clean:
	cd /home/ezhsluny/Documents/C++/task1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/circularb_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/circularb_test.dir/clean

test/CMakeFiles/circularb_test.dir/depend:
	cd /home/ezhsluny/Documents/C++/task1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ezhsluny/Documents/C++/task1 /home/ezhsluny/Documents/C++/task1/test /home/ezhsluny/Documents/C++/task1/build /home/ezhsluny/Documents/C++/task1/build/test /home/ezhsluny/Documents/C++/task1/build/test/CMakeFiles/circularb_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/circularb_test.dir/depend

