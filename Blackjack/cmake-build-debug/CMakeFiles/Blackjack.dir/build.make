# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\darde\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\173.4674.29\bin\cmake\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\darde\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\173.4674.29\bin\cmake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\darde\CLionProjects\Blackjack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\darde\CLionProjects\Blackjack\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Blackjack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Blackjack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Blackjack.dir/flags.make

CMakeFiles/Blackjack.dir/main.cpp.obj: CMakeFiles/Blackjack.dir/flags.make
CMakeFiles/Blackjack.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\darde\CLionProjects\Blackjack\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Blackjack.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Blackjack.dir\main.cpp.obj -c C:\Users\darde\CLionProjects\Blackjack\main.cpp

CMakeFiles/Blackjack.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Blackjack.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\darde\CLionProjects\Blackjack\main.cpp > CMakeFiles\Blackjack.dir\main.cpp.i

CMakeFiles/Blackjack.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Blackjack.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\darde\CLionProjects\Blackjack\main.cpp -o CMakeFiles\Blackjack.dir\main.cpp.s

CMakeFiles/Blackjack.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/Blackjack.dir/main.cpp.obj.requires

CMakeFiles/Blackjack.dir/main.cpp.obj.provides: CMakeFiles/Blackjack.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Blackjack.dir\build.make CMakeFiles/Blackjack.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/Blackjack.dir/main.cpp.obj.provides

CMakeFiles/Blackjack.dir/main.cpp.obj.provides.build: CMakeFiles/Blackjack.dir/main.cpp.obj


# Object files for target Blackjack
Blackjack_OBJECTS = \
"CMakeFiles/Blackjack.dir/main.cpp.obj"

# External object files for target Blackjack
Blackjack_EXTERNAL_OBJECTS =

Blackjack.exe: CMakeFiles/Blackjack.dir/main.cpp.obj
Blackjack.exe: CMakeFiles/Blackjack.dir/build.make
Blackjack.exe: CMakeFiles/Blackjack.dir/linklibs.rsp
Blackjack.exe: CMakeFiles/Blackjack.dir/objects1.rsp
Blackjack.exe: CMakeFiles/Blackjack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\darde\CLionProjects\Blackjack\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Blackjack.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Blackjack.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Blackjack.dir/build: Blackjack.exe

.PHONY : CMakeFiles/Blackjack.dir/build

CMakeFiles/Blackjack.dir/requires: CMakeFiles/Blackjack.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/Blackjack.dir/requires

CMakeFiles/Blackjack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Blackjack.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Blackjack.dir/clean

CMakeFiles/Blackjack.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\darde\CLionProjects\Blackjack C:\Users\darde\CLionProjects\Blackjack C:\Users\darde\CLionProjects\Blackjack\cmake-build-debug C:\Users\darde\CLionProjects\Blackjack\cmake-build-debug C:\Users\darde\CLionProjects\Blackjack\cmake-build-debug\CMakeFiles\Blackjack.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Blackjack.dir/depend

