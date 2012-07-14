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

# Include any dependencies generated for this target.
include src/server/shared/CMakeFiles/shared_pch_dephelp.dir/depend.make

# Include the progress variables for this target.
include src/server/shared/CMakeFiles/shared_pch_dephelp.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/shared/CMakeFiles/shared_pch_dephelp.dir/flags.make

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o: src/server/shared/CMakeFiles/shared_pch_dephelp.dir/flags.make
src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o: src/server/shared/shared_pch_dephelp.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /gogowow/git/0712/FaceCore/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o"
	cd /gogowow/git/0712/FaceCore/src/server/shared && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o -c /gogowow/git/0712/FaceCore/src/server/shared/shared_pch_dephelp.cxx

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.i"
	cd /gogowow/git/0712/FaceCore/src/server/shared && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /gogowow/git/0712/FaceCore/src/server/shared/shared_pch_dephelp.cxx > CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.i

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.s"
	cd /gogowow/git/0712/FaceCore/src/server/shared && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /gogowow/git/0712/FaceCore/src/server/shared/shared_pch_dephelp.cxx -o CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.s

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o.requires:
.PHONY : src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o.requires

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o.provides: src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o.requires
	$(MAKE) -f src/server/shared/CMakeFiles/shared_pch_dephelp.dir/build.make src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o.provides.build
.PHONY : src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o.provides

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o.provides.build: src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o

# Object files for target shared_pch_dephelp
shared_pch_dephelp_OBJECTS = \
"CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o"

# External object files for target shared_pch_dephelp
shared_pch_dephelp_EXTERNAL_OBJECTS =

src/server/shared/libshared_pch_dephelp.a: src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o
src/server/shared/libshared_pch_dephelp.a: src/server/shared/CMakeFiles/shared_pch_dephelp.dir/build.make
src/server/shared/libshared_pch_dephelp.a: src/server/shared/CMakeFiles/shared_pch_dephelp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libshared_pch_dephelp.a"
	cd /gogowow/git/0712/FaceCore/src/server/shared && $(CMAKE_COMMAND) -P CMakeFiles/shared_pch_dephelp.dir/cmake_clean_target.cmake
	cd /gogowow/git/0712/FaceCore/src/server/shared && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shared_pch_dephelp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/shared/CMakeFiles/shared_pch_dephelp.dir/build: src/server/shared/libshared_pch_dephelp.a
.PHONY : src/server/shared/CMakeFiles/shared_pch_dephelp.dir/build

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/requires: src/server/shared/CMakeFiles/shared_pch_dephelp.dir/shared_pch_dephelp.cxx.o.requires
.PHONY : src/server/shared/CMakeFiles/shared_pch_dephelp.dir/requires

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/clean:
	cd /gogowow/git/0712/FaceCore/src/server/shared && $(CMAKE_COMMAND) -P CMakeFiles/shared_pch_dephelp.dir/cmake_clean.cmake
.PHONY : src/server/shared/CMakeFiles/shared_pch_dephelp.dir/clean

src/server/shared/CMakeFiles/shared_pch_dephelp.dir/depend:
	cd /gogowow/git/0712/FaceCore && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /gogowow/git/0712/FaceCore /gogowow/git/0712/FaceCore/src/server/shared /gogowow/git/0712/FaceCore /gogowow/git/0712/FaceCore/src/server/shared /gogowow/git/0712/FaceCore/src/server/shared/CMakeFiles/shared_pch_dephelp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/shared/CMakeFiles/shared_pch_dephelp.dir/depend

