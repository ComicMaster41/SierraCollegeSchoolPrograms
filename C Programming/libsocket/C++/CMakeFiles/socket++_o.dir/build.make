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
include C++/CMakeFiles/socket++_o.dir/depend.make

# Include the progress variables for this target.
include C++/CMakeFiles/socket++_o.dir/progress.make

# Include the compile flags for this target's objects.
include C++/CMakeFiles/socket++_o.dir/flags.make

C++/CMakeFiles/socket++_o.dir/dgramclient.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/dgramclient.cpp.o: C++/dgramclient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object C++/CMakeFiles/socket++_o.dir/dgramclient.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/dgramclient.cpp.o -c /home/libsocket/C++/dgramclient.cpp

C++/CMakeFiles/socket++_o.dir/dgramclient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/dgramclient.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/dgramclient.cpp > CMakeFiles/socket++_o.dir/dgramclient.cpp.i

C++/CMakeFiles/socket++_o.dir/dgramclient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/dgramclient.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/dgramclient.cpp -o CMakeFiles/socket++_o.dir/dgramclient.cpp.s

C++/CMakeFiles/socket++_o.dir/dgramoverstream.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/dgramoverstream.cpp.o: C++/dgramoverstream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object C++/CMakeFiles/socket++_o.dir/dgramoverstream.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/dgramoverstream.cpp.o -c /home/libsocket/C++/dgramoverstream.cpp

C++/CMakeFiles/socket++_o.dir/dgramoverstream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/dgramoverstream.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/dgramoverstream.cpp > CMakeFiles/socket++_o.dir/dgramoverstream.cpp.i

C++/CMakeFiles/socket++_o.dir/dgramoverstream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/dgramoverstream.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/dgramoverstream.cpp -o CMakeFiles/socket++_o.dir/dgramoverstream.cpp.s

C++/CMakeFiles/socket++_o.dir/framing.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/framing.cpp.o: C++/framing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object C++/CMakeFiles/socket++_o.dir/framing.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/framing.cpp.o -c /home/libsocket/C++/framing.cpp

C++/CMakeFiles/socket++_o.dir/framing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/framing.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/framing.cpp > CMakeFiles/socket++_o.dir/framing.cpp.i

C++/CMakeFiles/socket++_o.dir/framing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/framing.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/framing.cpp -o CMakeFiles/socket++_o.dir/framing.cpp.s

C++/CMakeFiles/socket++_o.dir/inetbase.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/inetbase.cpp.o: C++/inetbase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object C++/CMakeFiles/socket++_o.dir/inetbase.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/inetbase.cpp.o -c /home/libsocket/C++/inetbase.cpp

C++/CMakeFiles/socket++_o.dir/inetbase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/inetbase.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/inetbase.cpp > CMakeFiles/socket++_o.dir/inetbase.cpp.i

C++/CMakeFiles/socket++_o.dir/inetbase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/inetbase.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/inetbase.cpp -o CMakeFiles/socket++_o.dir/inetbase.cpp.s

C++/CMakeFiles/socket++_o.dir/inetclientstream.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/inetclientstream.cpp.o: C++/inetclientstream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object C++/CMakeFiles/socket++_o.dir/inetclientstream.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/inetclientstream.cpp.o -c /home/libsocket/C++/inetclientstream.cpp

C++/CMakeFiles/socket++_o.dir/inetclientstream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/inetclientstream.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/inetclientstream.cpp > CMakeFiles/socket++_o.dir/inetclientstream.cpp.i

C++/CMakeFiles/socket++_o.dir/inetclientstream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/inetclientstream.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/inetclientstream.cpp -o CMakeFiles/socket++_o.dir/inetclientstream.cpp.s

C++/CMakeFiles/socket++_o.dir/inetserverdgram.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/inetserverdgram.cpp.o: C++/inetserverdgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object C++/CMakeFiles/socket++_o.dir/inetserverdgram.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/inetserverdgram.cpp.o -c /home/libsocket/C++/inetserverdgram.cpp

C++/CMakeFiles/socket++_o.dir/inetserverdgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/inetserverdgram.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/inetserverdgram.cpp > CMakeFiles/socket++_o.dir/inetserverdgram.cpp.i

C++/CMakeFiles/socket++_o.dir/inetserverdgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/inetserverdgram.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/inetserverdgram.cpp -o CMakeFiles/socket++_o.dir/inetserverdgram.cpp.s

C++/CMakeFiles/socket++_o.dir/select.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/select.cpp.o: C++/select.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object C++/CMakeFiles/socket++_o.dir/select.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/select.cpp.o -c /home/libsocket/C++/select.cpp

C++/CMakeFiles/socket++_o.dir/select.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/select.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/select.cpp > CMakeFiles/socket++_o.dir/select.cpp.i

C++/CMakeFiles/socket++_o.dir/select.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/select.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/select.cpp -o CMakeFiles/socket++_o.dir/select.cpp.s

C++/CMakeFiles/socket++_o.dir/streamclient.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/streamclient.cpp.o: C++/streamclient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object C++/CMakeFiles/socket++_o.dir/streamclient.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/streamclient.cpp.o -c /home/libsocket/C++/streamclient.cpp

C++/CMakeFiles/socket++_o.dir/streamclient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/streamclient.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/streamclient.cpp > CMakeFiles/socket++_o.dir/streamclient.cpp.i

C++/CMakeFiles/socket++_o.dir/streamclient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/streamclient.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/streamclient.cpp -o CMakeFiles/socket++_o.dir/streamclient.cpp.s

C++/CMakeFiles/socket++_o.dir/unixclientdgram.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/unixclientdgram.cpp.o: C++/unixclientdgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object C++/CMakeFiles/socket++_o.dir/unixclientdgram.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/unixclientdgram.cpp.o -c /home/libsocket/C++/unixclientdgram.cpp

C++/CMakeFiles/socket++_o.dir/unixclientdgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/unixclientdgram.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/unixclientdgram.cpp > CMakeFiles/socket++_o.dir/unixclientdgram.cpp.i

C++/CMakeFiles/socket++_o.dir/unixclientdgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/unixclientdgram.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/unixclientdgram.cpp -o CMakeFiles/socket++_o.dir/unixclientdgram.cpp.s

C++/CMakeFiles/socket++_o.dir/unixdgram.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/unixdgram.cpp.o: C++/unixdgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object C++/CMakeFiles/socket++_o.dir/unixdgram.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/unixdgram.cpp.o -c /home/libsocket/C++/unixdgram.cpp

C++/CMakeFiles/socket++_o.dir/unixdgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/unixdgram.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/unixdgram.cpp > CMakeFiles/socket++_o.dir/unixdgram.cpp.i

C++/CMakeFiles/socket++_o.dir/unixdgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/unixdgram.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/unixdgram.cpp -o CMakeFiles/socket++_o.dir/unixdgram.cpp.s

C++/CMakeFiles/socket++_o.dir/unixserverstream.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/unixserverstream.cpp.o: C++/unixserverstream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object C++/CMakeFiles/socket++_o.dir/unixserverstream.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/unixserverstream.cpp.o -c /home/libsocket/C++/unixserverstream.cpp

C++/CMakeFiles/socket++_o.dir/unixserverstream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/unixserverstream.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/unixserverstream.cpp > CMakeFiles/socket++_o.dir/unixserverstream.cpp.i

C++/CMakeFiles/socket++_o.dir/unixserverstream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/unixserverstream.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/unixserverstream.cpp -o CMakeFiles/socket++_o.dir/unixserverstream.cpp.s

C++/CMakeFiles/socket++_o.dir/exception.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/exception.cpp.o: C++/exception.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object C++/CMakeFiles/socket++_o.dir/exception.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/exception.cpp.o -c /home/libsocket/C++/exception.cpp

C++/CMakeFiles/socket++_o.dir/exception.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/exception.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/exception.cpp > CMakeFiles/socket++_o.dir/exception.cpp.i

C++/CMakeFiles/socket++_o.dir/exception.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/exception.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/exception.cpp -o CMakeFiles/socket++_o.dir/exception.cpp.s

C++/CMakeFiles/socket++_o.dir/inetclientdgram.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/inetclientdgram.cpp.o: C++/inetclientdgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object C++/CMakeFiles/socket++_o.dir/inetclientdgram.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/inetclientdgram.cpp.o -c /home/libsocket/C++/inetclientdgram.cpp

C++/CMakeFiles/socket++_o.dir/inetclientdgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/inetclientdgram.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/inetclientdgram.cpp > CMakeFiles/socket++_o.dir/inetclientdgram.cpp.i

C++/CMakeFiles/socket++_o.dir/inetclientdgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/inetclientdgram.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/inetclientdgram.cpp -o CMakeFiles/socket++_o.dir/inetclientdgram.cpp.s

C++/CMakeFiles/socket++_o.dir/inetdgram.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/inetdgram.cpp.o: C++/inetdgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object C++/CMakeFiles/socket++_o.dir/inetdgram.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/inetdgram.cpp.o -c /home/libsocket/C++/inetdgram.cpp

C++/CMakeFiles/socket++_o.dir/inetdgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/inetdgram.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/inetdgram.cpp > CMakeFiles/socket++_o.dir/inetdgram.cpp.i

C++/CMakeFiles/socket++_o.dir/inetdgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/inetdgram.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/inetdgram.cpp -o CMakeFiles/socket++_o.dir/inetdgram.cpp.s

C++/CMakeFiles/socket++_o.dir/inetserverstream.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/inetserverstream.cpp.o: C++/inetserverstream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object C++/CMakeFiles/socket++_o.dir/inetserverstream.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/inetserverstream.cpp.o -c /home/libsocket/C++/inetserverstream.cpp

C++/CMakeFiles/socket++_o.dir/inetserverstream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/inetserverstream.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/inetserverstream.cpp > CMakeFiles/socket++_o.dir/inetserverstream.cpp.i

C++/CMakeFiles/socket++_o.dir/inetserverstream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/inetserverstream.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/inetserverstream.cpp -o CMakeFiles/socket++_o.dir/inetserverstream.cpp.s

C++/CMakeFiles/socket++_o.dir/socket.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/socket.cpp.o: C++/socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object C++/CMakeFiles/socket++_o.dir/socket.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/socket.cpp.o -c /home/libsocket/C++/socket.cpp

C++/CMakeFiles/socket++_o.dir/socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/socket.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/socket.cpp > CMakeFiles/socket++_o.dir/socket.cpp.i

C++/CMakeFiles/socket++_o.dir/socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/socket.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/socket.cpp -o CMakeFiles/socket++_o.dir/socket.cpp.s

C++/CMakeFiles/socket++_o.dir/unixbase.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/unixbase.cpp.o: C++/unixbase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object C++/CMakeFiles/socket++_o.dir/unixbase.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/unixbase.cpp.o -c /home/libsocket/C++/unixbase.cpp

C++/CMakeFiles/socket++_o.dir/unixbase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/unixbase.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/unixbase.cpp > CMakeFiles/socket++_o.dir/unixbase.cpp.i

C++/CMakeFiles/socket++_o.dir/unixbase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/unixbase.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/unixbase.cpp -o CMakeFiles/socket++_o.dir/unixbase.cpp.s

C++/CMakeFiles/socket++_o.dir/unixclientstream.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/unixclientstream.cpp.o: C++/unixclientstream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object C++/CMakeFiles/socket++_o.dir/unixclientstream.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/unixclientstream.cpp.o -c /home/libsocket/C++/unixclientstream.cpp

C++/CMakeFiles/socket++_o.dir/unixclientstream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/unixclientstream.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/unixclientstream.cpp > CMakeFiles/socket++_o.dir/unixclientstream.cpp.i

C++/CMakeFiles/socket++_o.dir/unixclientstream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/unixclientstream.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/unixclientstream.cpp -o CMakeFiles/socket++_o.dir/unixclientstream.cpp.s

C++/CMakeFiles/socket++_o.dir/unixserverdgram.cpp.o: C++/CMakeFiles/socket++_o.dir/flags.make
C++/CMakeFiles/socket++_o.dir/unixserverdgram.cpp.o: C++/unixserverdgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/libsocket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object C++/CMakeFiles/socket++_o.dir/unixserverdgram.cpp.o"
	cd /home/libsocket/C++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket++_o.dir/unixserverdgram.cpp.o -c /home/libsocket/C++/unixserverdgram.cpp

C++/CMakeFiles/socket++_o.dir/unixserverdgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket++_o.dir/unixserverdgram.cpp.i"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/libsocket/C++/unixserverdgram.cpp > CMakeFiles/socket++_o.dir/unixserverdgram.cpp.i

C++/CMakeFiles/socket++_o.dir/unixserverdgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket++_o.dir/unixserverdgram.cpp.s"
	cd /home/libsocket/C++ && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/libsocket/C++/unixserverdgram.cpp -o CMakeFiles/socket++_o.dir/unixserverdgram.cpp.s

socket++_o: C++/CMakeFiles/socket++_o.dir/dgramclient.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/dgramoverstream.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/framing.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/inetbase.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/inetclientstream.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/inetserverdgram.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/select.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/streamclient.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/unixclientdgram.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/unixdgram.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/unixserverstream.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/exception.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/inetclientdgram.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/inetdgram.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/inetserverstream.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/socket.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/unixbase.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/unixclientstream.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/unixserverdgram.cpp.o
socket++_o: C++/CMakeFiles/socket++_o.dir/build.make

.PHONY : socket++_o

# Rule to build all files generated by this target.
C++/CMakeFiles/socket++_o.dir/build: socket++_o

.PHONY : C++/CMakeFiles/socket++_o.dir/build

C++/CMakeFiles/socket++_o.dir/clean:
	cd /home/libsocket/C++ && $(CMAKE_COMMAND) -P CMakeFiles/socket++_o.dir/cmake_clean.cmake
.PHONY : C++/CMakeFiles/socket++_o.dir/clean

C++/CMakeFiles/socket++_o.dir/depend:
	cd /home/libsocket && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/libsocket /home/libsocket/C++ /home/libsocket /home/libsocket/C++ /home/libsocket/C++/CMakeFiles/socket++_o.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : C++/CMakeFiles/socket++_o.dir/depend

