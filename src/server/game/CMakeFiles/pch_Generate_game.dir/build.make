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

# Utility rule file for pch_Generate_game.

# Include the progress variables for this target.
include src/server/game/CMakeFiles/pch_Generate_game.dir/progress.make

src/server/game/CMakeFiles/pch_Generate_game: src/server/game/gamePCH.h.gch/game_Release.gch

src/server/game/gamePCH.h.gch/game_Release.gch: src/server/game/PrecompiledHeaders/gamePCH.h
src/server/game/gamePCH.h.gch/game_Release.gch: src/server/game/gamePCH.h
src/server/game/gamePCH.h.gch/game_Release.gch: src/server/game/libgame_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /gogowow/git/0712/FaceCore/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating gamePCH.h.gch/game_Release.gch"
	cd /gogowow/git/0712/FaceCore/src/server/game && /usr/bin/c++ -O3 -DNDEBUG -I/usr/include -I/gogowow/git/0712/FaceCore/src/server/game -I/gogowow/git/0712/FaceCore -I/gogowow/git/0712/FaceCore/dep/g3dlite/include -I/gogowow/git/0712/FaceCore/dep/SFMT -I/gogowow/git/0712/FaceCore/dep/zlib -I/gogowow/git/0712/FaceCore/src/server/collision -I/gogowow/git/0712/FaceCore/src/server/collision/Management -I/gogowow/git/0712/FaceCore/src/server/collision/Models -I/gogowow/git/0712/FaceCore/src/server/collision/Maps -I/gogowow/git/0712/FaceCore/src/server/shared -I/gogowow/git/0712/FaceCore/src/server/shared/Configuration -I/gogowow/git/0712/FaceCore/src/server/shared/Cryptography -I/gogowow/git/0712/FaceCore/src/server/shared/Cryptography/Authentication -I/gogowow/git/0712/FaceCore/src/server/shared/Database -I/gogowow/git/0712/FaceCore/src/server/shared/DataStores -I/gogowow/git/0712/FaceCore/src/server/shared/Debugging -I/gogowow/git/0712/FaceCore/src/server/shared/Dynamic/LinkedReference -I/gogowow/git/0712/FaceCore/src/server/shared/Dynamic -I/gogowow/git/0712/FaceCore/src/server/shared/Logging -I/gogowow/git/0712/FaceCore/src/server/shared/Packets -I/gogowow/git/0712/FaceCore/src/server/shared/Threading -I/gogowow/git/0712/FaceCore/src/server/shared/Utilities -I/gogowow/git/0712/FaceCore/src/server/game/Accounts -I/gogowow/git/0712/FaceCore/src/server/game/Achievements -I/gogowow/git/0712/FaceCore/src/server/game/Addons -I/gogowow/git/0712/FaceCore/src/server/game/AI -I/gogowow/git/0712/FaceCore/src/server/game/AI/CoreAI -I/gogowow/git/0712/FaceCore/src/server/game/AI/EventAI -I/gogowow/git/0712/FaceCore/src/server/game/AI/ScriptedAI -I/gogowow/git/0712/FaceCore/src/server/game/AI/SmartScripts -I/gogowow/git/0712/FaceCore/src/server/game/AuctionHouse -I/gogowow/git/0712/FaceCore/src/server/game/Battlegrounds -I/gogowow/git/0712/FaceCore/src/server/game/Battlegrounds/Zones -I/gogowow/git/0712/FaceCore/src/server/game/Calendar -I/gogowow/git/0712/FaceCore/src/server/game/Chat -I/gogowow/git/0712/FaceCore/src/server/game/Chat/Channels -I/gogowow/git/0712/FaceCore/src/server/game/Chat/Commands -I/gogowow/git/0712/FaceCore/src/server/game/Combat -I/gogowow/git/0712/FaceCore/src/server/game/Conditions -I/gogowow/git/0712/FaceCore/src/server/game/DataStores -I/gogowow/git/0712/FaceCore/src/server/game/DungeonFinding -I/gogowow/git/0712/FaceCore/src/server/game/Entities -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Creature -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Corpse -I/gogowow/git/0712/FaceCore/src/server/game/Entities/DynamicObject -I/gogowow/git/0712/FaceCore/src/server/game/Entities/GameObject -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Item -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Item/Container -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Object -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Object/Updates -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Pet -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Player -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Totem -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Unit -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Vehicle -I/gogowow/git/0712/FaceCore/src/server/game/Entities/Transport -I/gogowow/git/0712/FaceCore/src/server/game/Events -I/gogowow/git/0712/FaceCore/src/server/game/Globals -I/gogowow/git/0712/FaceCore/src/server/game/Grids/Cells -I/gogowow/git/0712/FaceCore/src/server/game/Grids/Notifiers -I/gogowow/git/0712/FaceCore/src/server/game/Grids -I/gogowow/git/0712/FaceCore/src/server/game/Groups -I/gogowow/git/0712/FaceCore/src/server/game/Guilds -I/gogowow/git/0712/FaceCore/src/server/game/Handlers -I/gogowow/git/0712/FaceCore/src/server/game/Instances -I/gogowow/git/0712/FaceCore/src/server/game/Loot -I/gogowow/git/0712/FaceCore/src/server/game/Mails -I/gogowow/git/0712/FaceCore/src/server/game/Maps -I/gogowow/git/0712/FaceCore/src/server/game/Miscellaneous -I/gogowow/git/0712/FaceCore/src/server/game/Movement -I/gogowow/git/0712/FaceCore/src/server/game/Movement/Spline -I/gogowow/git/0712/FaceCore/src/server/game/Movement/MovementGenerators -I/gogowow/git/0712/FaceCore/src/server/game/Movement/Waypoints -I/gogowow/git/0712/FaceCore/src/server/game/OutdoorPvP -I/gogowow/git/0712/FaceCore/src/server/game/Pools -I/gogowow/git/0712/FaceCore/src/server/game/PrecompiledHeaders -I/gogowow/git/0712/FaceCore/src/server/game/Quests -I/gogowow/git/0712/FaceCore/src/server/game/Reputation -I/gogowow/git/0712/FaceCore/src/server/game/Scripting -I/gogowow/git/0712/FaceCore/src/server/game/Server/Protocol -I/gogowow/git/0712/FaceCore/src/server/game/Server -I/gogowow/git/0712/FaceCore/src/server/game/Skills -I/gogowow/git/0712/FaceCore/src/server/game/Spells -I/gogowow/git/0712/FaceCore/src/server/game/Spells/Auras -I/gogowow/git/0712/FaceCore/src/server/game/Texts -I/gogowow/git/0712/FaceCore/src/server/game/Tools -I/gogowow/git/0712/FaceCore/src/server/game/Tickets -I/gogowow/git/0712/FaceCore/src/server/game/Warden -I/gogowow/git/0712/FaceCore/src/server/game/Warden/Modules -I/gogowow/git/0712/FaceCore/src/server/game/Weather -I/gogowow/git/0712/FaceCore/src/server/game/World -I/gogowow/git/0712/FaceCore/src/server/scripts/PrecompiledHeaders -I/gogowow/git/0712/FaceCore/src/server/scripts/OutdoorPvP -I/home/root/.sys/include -I/usr/include/mysql -D_BUILD_DIRECTIVE='"Release"' -fno-delete-null-pointer-checks -msse2 -mfpmath=sse -DHAVE_SSE2 -D__SSE2__ --no-warnings -DSCRIPTS -fno-delete-null-pointer-checks -D_BUILD_DIRECTIVE='"Release"' -fno-delete-null-pointer-checks -msse2 -mfpmath=sse -DHAVE_SSE2 -D__SSE2__ --no-warnings -DSCRIPTS -x c++-header -o /gogowow/git/0712/FaceCore/src/server/game/gamePCH.h.gch/game_Release.gch /gogowow/git/0712/FaceCore/src/server/game/gamePCH.h

src/server/game/gamePCH.h: src/server/game/PrecompiledHeaders/gamePCH.h
	$(CMAKE_COMMAND) -E cmake_progress_report /gogowow/git/0712/FaceCore/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating gamePCH.h"
	cd /gogowow/git/0712/FaceCore/src/server/game && /usr/bin/cmake -E copy /gogowow/git/0712/FaceCore/src/server/game/PrecompiledHeaders/gamePCH.h /gogowow/git/0712/FaceCore/src/server/game/gamePCH.h

pch_Generate_game: src/server/game/CMakeFiles/pch_Generate_game
pch_Generate_game: src/server/game/gamePCH.h.gch/game_Release.gch
pch_Generate_game: src/server/game/gamePCH.h
pch_Generate_game: src/server/game/CMakeFiles/pch_Generate_game.dir/build.make
.PHONY : pch_Generate_game

# Rule to build all files generated by this target.
src/server/game/CMakeFiles/pch_Generate_game.dir/build: pch_Generate_game
.PHONY : src/server/game/CMakeFiles/pch_Generate_game.dir/build

src/server/game/CMakeFiles/pch_Generate_game.dir/clean:
	cd /gogowow/git/0712/FaceCore/src/server/game && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_game.dir/cmake_clean.cmake
.PHONY : src/server/game/CMakeFiles/pch_Generate_game.dir/clean

src/server/game/CMakeFiles/pch_Generate_game.dir/depend:
	cd /gogowow/git/0712/FaceCore && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /gogowow/git/0712/FaceCore /gogowow/git/0712/FaceCore/src/server/game /gogowow/git/0712/FaceCore /gogowow/git/0712/FaceCore/src/server/game /gogowow/git/0712/FaceCore/src/server/game/CMakeFiles/pch_Generate_game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/game/CMakeFiles/pch_Generate_game.dir/depend

