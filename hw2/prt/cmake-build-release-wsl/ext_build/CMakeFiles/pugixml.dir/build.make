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
CMAKE_SOURCE_DIR = /mnt/e/Games202/hw2/prt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/e/Games202/hw2/prt/cmake-build-release-wsl

# Include any dependencies generated for this target.
include ext_build/CMakeFiles/pugixml.dir/depend.make

# Include the progress variables for this target.
include ext_build/CMakeFiles/pugixml.dir/progress.make

# Include the compile flags for this target's objects.
include ext_build/CMakeFiles/pugixml.dir/flags.make

ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o: ext_build/CMakeFiles/pugixml.dir/flags.make
ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o: ../ext/pugixml/src/pugixml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/e/Games202/hw2/prt/cmake-build-release-wsl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o"
	cd /mnt/e/Games202/hw2/prt/cmake-build-release-wsl/ext_build && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o -c /mnt/e/Games202/hw2/prt/ext/pugixml/src/pugixml.cpp

ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.i"
	cd /mnt/e/Games202/hw2/prt/cmake-build-release-wsl/ext_build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/e/Games202/hw2/prt/ext/pugixml/src/pugixml.cpp > CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.i

ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.s"
	cd /mnt/e/Games202/hw2/prt/cmake-build-release-wsl/ext_build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/e/Games202/hw2/prt/ext/pugixml/src/pugixml.cpp -o CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.s

# Object files for target pugixml
pugixml_OBJECTS = \
"CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o"

# External object files for target pugixml
pugixml_EXTERNAL_OBJECTS =

ext_build/libpugixml.a: ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o
ext_build/libpugixml.a: ext_build/CMakeFiles/pugixml.dir/build.make
ext_build/libpugixml.a: ext_build/CMakeFiles/pugixml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/e/Games202/hw2/prt/cmake-build-release-wsl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libpugixml.a"
	cd /mnt/e/Games202/hw2/prt/cmake-build-release-wsl/ext_build && $(CMAKE_COMMAND) -P CMakeFiles/pugixml.dir/cmake_clean_target.cmake
	cd /mnt/e/Games202/hw2/prt/cmake-build-release-wsl/ext_build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pugixml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ext_build/CMakeFiles/pugixml.dir/build: ext_build/libpugixml.a

.PHONY : ext_build/CMakeFiles/pugixml.dir/build

ext_build/CMakeFiles/pugixml.dir/clean:
	cd /mnt/e/Games202/hw2/prt/cmake-build-release-wsl/ext_build && $(CMAKE_COMMAND) -P CMakeFiles/pugixml.dir/cmake_clean.cmake
.PHONY : ext_build/CMakeFiles/pugixml.dir/clean

ext_build/CMakeFiles/pugixml.dir/depend:
	cd /mnt/e/Games202/hw2/prt/cmake-build-release-wsl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/e/Games202/hw2/prt /mnt/e/Games202/hw2/prt/ext /mnt/e/Games202/hw2/prt/cmake-build-release-wsl /mnt/e/Games202/hw2/prt/cmake-build-release-wsl/ext_build /mnt/e/Games202/hw2/prt/cmake-build-release-wsl/ext_build/CMakeFiles/pugixml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ext_build/CMakeFiles/pugixml.dir/depend

