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
include CMakeFiles/circ_buff.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/circ_buff.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/circ_buff.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/circ_buff.dir/flags.make

CMakeFiles/circ_buff.dir/circ_buff.cpp.o: CMakeFiles/circ_buff.dir/flags.make
CMakeFiles/circ_buff.dir/circ_buff.cpp.o: /home/ezhsluny/Documents/C++/task1/circ_buff.cpp
CMakeFiles/circ_buff.dir/circ_buff.cpp.o: CMakeFiles/circ_buff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ezhsluny/Documents/C++/task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/circ_buff.dir/circ_buff.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/circ_buff.dir/circ_buff.cpp.o -MF CMakeFiles/circ_buff.dir/circ_buff.cpp.o.d -o CMakeFiles/circ_buff.dir/circ_buff.cpp.o -c /home/ezhsluny/Documents/C++/task1/circ_buff.cpp

CMakeFiles/circ_buff.dir/circ_buff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/circ_buff.dir/circ_buff.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ezhsluny/Documents/C++/task1/circ_buff.cpp > CMakeFiles/circ_buff.dir/circ_buff.cpp.i

CMakeFiles/circ_buff.dir/circ_buff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/circ_buff.dir/circ_buff.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ezhsluny/Documents/C++/task1/circ_buff.cpp -o CMakeFiles/circ_buff.dir/circ_buff.cpp.s

# Object files for target circ_buff
circ_buff_OBJECTS = \
"CMakeFiles/circ_buff.dir/circ_buff.cpp.o"

# External object files for target circ_buff
circ_buff_EXTERNAL_OBJECTS =

libcirc_buff.a: CMakeFiles/circ_buff.dir/circ_buff.cpp.o
libcirc_buff.a: CMakeFiles/circ_buff.dir/build.make
libcirc_buff.a: CMakeFiles/circ_buff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ezhsluny/Documents/C++/task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libcirc_buff.a"
	$(CMAKE_COMMAND) -P CMakeFiles/circ_buff.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/circ_buff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/circ_buff.dir/build: libcirc_buff.a
.PHONY : CMakeFiles/circ_buff.dir/build

CMakeFiles/circ_buff.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/circ_buff.dir/cmake_clean.cmake
.PHONY : CMakeFiles/circ_buff.dir/clean

CMakeFiles/circ_buff.dir/depend:
	cd /home/ezhsluny/Documents/C++/task1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ezhsluny/Documents/C++/task1 /home/ezhsluny/Documents/C++/task1 /home/ezhsluny/Documents/C++/task1/build /home/ezhsluny/Documents/C++/task1/build /home/ezhsluny/Documents/C++/task1/build/CMakeFiles/circ_buff.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/circ_buff.dir/depend

