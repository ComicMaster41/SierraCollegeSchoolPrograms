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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/libsocket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/libsocket

# Include any dependencies generated for this target.
include C/CMakeFiles/socket.dir/depend.make

# Include the progress variables for this target.
include C/CMakeFiles/socket.dir/progress.make

# Include the compile flags for this target's objects.
include C/CMakeFiles/socket.dir/flags.make

# Object files for target socket
socket_OBJECTS =

# External object files for target socket
socket_EXTERNAL_OBJECTS = \
"/home/libsocket/C/CMakeFiles/socket_o.dir/inet/libinetsocket.c.o" \
"/home/libsocket/C/CMakeFiles/socket_o.dir/unix/libunixsocket.c.o"

C/libsocket.so: C/CMakeFiles/socket_o.dir/inet/libinetsocket.c.o
C/libsocket.so: C/CMakeFiles/socket_o.dir/unix/libunixsocket.c.o
C/libsocket.so: C/CMakeFiles/socket.dir/build.make
C/libsocket.so: C/CMakeFiles/socket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking C shared library libsocket.so"
	cd /home/libsocket/C && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
C/CMakeFiles/socket.dir/build: C/libsocket.so

.PHONY : C/CMakeFiles/socket.dir/build

C/CMakeFiles/socket.dir/clean:
	cd /home/libsocket/C && $(CMAKE_COMMAND) -P CMakeFiles/socket.dir/cmake_clean.cmake
.PHONY : C/CMakeFiles/socket.dir/clean

C/CMakeFiles/socket.dir/depend:
	cd /home/libsocket && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/libsocket /home/libsocket/C /home/libsocket /home/libsocket/C /home/libsocket/C/CMakeFiles/socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : C/CMakeFiles/socket.dir/depend

