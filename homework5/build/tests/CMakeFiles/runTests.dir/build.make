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
CMAKE_SOURCE_DIR = /home/ezhsluny/Documents/C++/OOP/homework5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ezhsluny/Documents/C++/OOP/homework5/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/runTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/runTests.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/runTests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/runTests.dir/flags.make

tests/CMakeFiles/runTests.dir/test_homework5.cpp.o: tests/CMakeFiles/runTests.dir/flags.make
tests/CMakeFiles/runTests.dir/test_homework5.cpp.o: /home/ezhsluny/Documents/C++/OOP/homework5/tests/test_homework5.cpp
tests/CMakeFiles/runTests.dir/test_homework5.cpp.o: tests/CMakeFiles/runTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ezhsluny/Documents/C++/OOP/homework5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/runTests.dir/test_homework5.cpp.o"
	cd /home/ezhsluny/Documents/C++/OOP/homework5/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/runTests.dir/test_homework5.cpp.o -MF CMakeFiles/runTests.dir/test_homework5.cpp.o.d -o CMakeFiles/runTests.dir/test_homework5.cpp.o -c /home/ezhsluny/Documents/C++/OOP/homework5/tests/test_homework5.cpp

tests/CMakeFiles/runTests.dir/test_homework5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runTests.dir/test_homework5.cpp.i"
	cd /home/ezhsluny/Documents/C++/OOP/homework5/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ezhsluny/Documents/C++/OOP/homework5/tests/test_homework5.cpp > CMakeFiles/runTests.dir/test_homework5.cpp.i

tests/CMakeFiles/runTests.dir/test_homework5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/test_homework5.cpp.s"
	cd /home/ezhsluny/Documents/C++/OOP/homework5/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ezhsluny/Documents/C++/OOP/homework5/tests/test_homework5.cpp -o CMakeFiles/runTests.dir/test_homework5.cpp.s

# Object files for target runTests
runTests_OBJECTS = \
"CMakeFiles/runTests.dir/test_homework5.cpp.o"

# External object files for target runTests
runTests_EXTERNAL_OBJECTS =

tests/runTests: tests/CMakeFiles/runTests.dir/test_homework5.cpp.o
tests/runTests: tests/CMakeFiles/runTests.dir/build.make
tests/runTests: lib/libgtest.a
tests/runTests: lib/libgtest_main.a
tests/runTests: lib/libgtest.a
tests/runTests: tests/CMakeFiles/runTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ezhsluny/Documents/C++/OOP/homework5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable runTests"
	cd /home/ezhsluny/Documents/C++/OOP/homework5/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runTests.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ezhsluny/Documents/C++/OOP/homework5/build/tests && /usr/bin/cmake -D TEST_TARGET=runTests -D TEST_EXECUTABLE=/home/ezhsluny/Documents/C++/OOP/homework5/build/tests/runTests -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/ezhsluny/Documents/C++/OOP/homework5/build/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=runTests_TESTS -D CTEST_FILE=/home/ezhsluny/Documents/C++/OOP/homework5/build/tests/runTests[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.28/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/runTests.dir/build: tests/runTests
.PHONY : tests/CMakeFiles/runTests.dir/build

tests/CMakeFiles/runTests.dir/clean:
	cd /home/ezhsluny/Documents/C++/OOP/homework5/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/runTests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/runTests.dir/clean

tests/CMakeFiles/runTests.dir/depend:
	cd /home/ezhsluny/Documents/C++/OOP/homework5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ezhsluny/Documents/C++/OOP/homework5 /home/ezhsluny/Documents/C++/OOP/homework5/tests /home/ezhsluny/Documents/C++/OOP/homework5/build /home/ezhsluny/Documents/C++/OOP/homework5/build/tests /home/ezhsluny/Documents/C++/OOP/homework5/build/tests/CMakeFiles/runTests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/runTests.dir/depend

