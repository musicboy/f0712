# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /gogowow/git/0712/FaceCore

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /gogowow/git/0712/FaceCore

# Utility rule file for revision.h.

# Include the progress variables for this target.
include src/genrev/CMakeFiles/revision.h.dir/progress.make

src/genrev/CMakeFiles/revision.h:
	/usr/bin/cmake -DBUILDDIR=/gogowow/git/0712/FaceCore -P /gogowow/git/0712/FaceCore/cmake/genrev.cmake

revision.h: src/genrev/CMakeFiles/revision.h
revision.h: src/genrev/CMakeFiles/revision.h.dir/build.make
.PHONY : revision.h

# Rule to build all files generated by this target.
src/genrev/CMakeFiles/revision.h.dir/build: revision.h
.PHONY : src/genrev/CMakeFiles/revision.h.dir/build

src/genrev/CMakeFiles/revision.h.dir/clean:
	cd /gogowow/git/0712/FaceCore/src/genrev && $(CMAKE_COMMAND) -P CMakeFiles/revision.h.dir/cmake_clean.cmake
.PHONY : src/genrev/CMakeFiles/revision.h.dir/clean

src/genrev/CMakeFiles/revision.h.dir/depend:
	cd /gogowow/git/0712/FaceCore && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /gogowow/git/0712/FaceCore /gogowow/git/0712/FaceCore/src/genrev /gogowow/git/0712/FaceCore /gogowow/git/0712/FaceCore/src/genrev /gogowow/git/0712/FaceCore/src/genrev/CMakeFiles/revision.h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/genrev/CMakeFiles/revision.h.dir/depend

