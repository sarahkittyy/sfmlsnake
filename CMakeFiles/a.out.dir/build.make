# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/sarahkitty/Code/C++/Snake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sarahkitty/Code/C++/Snake

# Include any dependencies generated for this target.
include CMakeFiles/a.out.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/a.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/a.out.dir/flags.make

CMakeFiles/a.out.dir/src/Head.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/src/Head.cpp.o: src/Head.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/a.out.dir/src/Head.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/src/Head.cpp.o -c /home/sarahkitty/Code/C++/Snake/src/Head.cpp

CMakeFiles/a.out.dir/src/Head.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/src/Head.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/src/Head.cpp > CMakeFiles/a.out.dir/src/Head.cpp.i

CMakeFiles/a.out.dir/src/Head.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/src/Head.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/src/Head.cpp -o CMakeFiles/a.out.dir/src/Head.cpp.s

CMakeFiles/a.out.dir/src/Map.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/src/Map.cpp.o: src/Map.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/a.out.dir/src/Map.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/src/Map.cpp.o -c /home/sarahkitty/Code/C++/Snake/src/Map.cpp

CMakeFiles/a.out.dir/src/Map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/src/Map.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/src/Map.cpp > CMakeFiles/a.out.dir/src/Map.cpp.i

CMakeFiles/a.out.dir/src/Map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/src/Map.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/src/Map.cpp -o CMakeFiles/a.out.dir/src/Map.cpp.s

CMakeFiles/a.out.dir/src/Question.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/src/Question.cpp.o: src/Question.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/a.out.dir/src/Question.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/src/Question.cpp.o -c /home/sarahkitty/Code/C++/Snake/src/Question.cpp

CMakeFiles/a.out.dir/src/Question.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/src/Question.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/src/Question.cpp > CMakeFiles/a.out.dir/src/Question.cpp.i

CMakeFiles/a.out.dir/src/Question.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/src/Question.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/src/Question.cpp -o CMakeFiles/a.out.dir/src/Question.cpp.s

CMakeFiles/a.out.dir/src/QuestionManager.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/src/QuestionManager.cpp.o: src/QuestionManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/a.out.dir/src/QuestionManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/src/QuestionManager.cpp.o -c /home/sarahkitty/Code/C++/Snake/src/QuestionManager.cpp

CMakeFiles/a.out.dir/src/QuestionManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/src/QuestionManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/src/QuestionManager.cpp > CMakeFiles/a.out.dir/src/QuestionManager.cpp.i

CMakeFiles/a.out.dir/src/QuestionManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/src/QuestionManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/src/QuestionManager.cpp -o CMakeFiles/a.out.dir/src/QuestionManager.cpp.s

CMakeFiles/a.out.dir/src/Tail.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/src/Tail.cpp.o: src/Tail.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/a.out.dir/src/Tail.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/src/Tail.cpp.o -c /home/sarahkitty/Code/C++/Snake/src/Tail.cpp

CMakeFiles/a.out.dir/src/Tail.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/src/Tail.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/src/Tail.cpp > CMakeFiles/a.out.dir/src/Tail.cpp.i

CMakeFiles/a.out.dir/src/Tail.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/src/Tail.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/src/Tail.cpp -o CMakeFiles/a.out.dir/src/Tail.cpp.s

CMakeFiles/a.out.dir/src/snake.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/src/snake.cpp.o: src/snake.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/a.out.dir/src/snake.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/src/snake.cpp.o -c /home/sarahkitty/Code/C++/Snake/src/snake.cpp

CMakeFiles/a.out.dir/src/snake.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/src/snake.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/src/snake.cpp > CMakeFiles/a.out.dir/src/snake.cpp.i

CMakeFiles/a.out.dir/src/snake.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/src/snake.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/src/snake.cpp -o CMakeFiles/a.out.dir/src/snake.cpp.s

CMakeFiles/a.out.dir/include/imgui/imgui.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/include/imgui/imgui.cpp.o: include/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/a.out.dir/include/imgui/imgui.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/include/imgui/imgui.cpp.o -c /home/sarahkitty/Code/C++/Snake/include/imgui/imgui.cpp

CMakeFiles/a.out.dir/include/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/include/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/include/imgui/imgui.cpp > CMakeFiles/a.out.dir/include/imgui/imgui.cpp.i

CMakeFiles/a.out.dir/include/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/include/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/include/imgui/imgui.cpp -o CMakeFiles/a.out.dir/include/imgui/imgui.cpp.s

CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.o: include/imgui/imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.o -c /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_demo.cpp

CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_demo.cpp > CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.i

CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_demo.cpp -o CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.s

CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.o: include/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.o -c /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_draw.cpp

CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_draw.cpp > CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.i

CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_draw.cpp -o CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.s

CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.o: include/imgui/imgui_widgets.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.o -c /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_widgets.cpp

CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_widgets.cpp > CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.i

CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/include/imgui/imgui_widgets.cpp -o CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.s

CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.o: include/imgui-sfml/imgui-SFML.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.o -c /home/sarahkitty/Code/C++/Snake/include/imgui-sfml/imgui-SFML.cpp

CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarahkitty/Code/C++/Snake/include/imgui-sfml/imgui-SFML.cpp > CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.i

CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarahkitty/Code/C++/Snake/include/imgui-sfml/imgui-SFML.cpp -o CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.s

# Object files for target a.out
a_out_OBJECTS = \
"CMakeFiles/a.out.dir/src/Head.cpp.o" \
"CMakeFiles/a.out.dir/src/Map.cpp.o" \
"CMakeFiles/a.out.dir/src/Question.cpp.o" \
"CMakeFiles/a.out.dir/src/QuestionManager.cpp.o" \
"CMakeFiles/a.out.dir/src/Tail.cpp.o" \
"CMakeFiles/a.out.dir/src/snake.cpp.o" \
"CMakeFiles/a.out.dir/include/imgui/imgui.cpp.o" \
"CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.o" \
"CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.o" \
"CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.o"

# External object files for target a.out
a_out_EXTERNAL_OBJECTS =

bin/a.out: CMakeFiles/a.out.dir/src/Head.cpp.o
bin/a.out: CMakeFiles/a.out.dir/src/Map.cpp.o
bin/a.out: CMakeFiles/a.out.dir/src/Question.cpp.o
bin/a.out: CMakeFiles/a.out.dir/src/QuestionManager.cpp.o
bin/a.out: CMakeFiles/a.out.dir/src/Tail.cpp.o
bin/a.out: CMakeFiles/a.out.dir/src/snake.cpp.o
bin/a.out: CMakeFiles/a.out.dir/include/imgui/imgui.cpp.o
bin/a.out: CMakeFiles/a.out.dir/include/imgui/imgui_demo.cpp.o
bin/a.out: CMakeFiles/a.out.dir/include/imgui/imgui_draw.cpp.o
bin/a.out: CMakeFiles/a.out.dir/include/imgui/imgui_widgets.cpp.o
bin/a.out: CMakeFiles/a.out.dir/include/imgui-sfml/imgui-SFML.cpp.o
bin/a.out: CMakeFiles/a.out.dir/build.make
bin/a.out: /usr/local/lib/libsfml-graphics.so.2.5.1
bin/a.out: /usr/local/lib/libsfml-window.so.2.5.1
bin/a.out: /usr/local/lib/libsfml-audio.so.2.5.1
bin/a.out: /usr/local/lib/libsfml-network.so.2.5.1
bin/a.out: /usr/local/lib/libsfml-system.so.2.5.1
bin/a.out: CMakeFiles/a.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sarahkitty/Code/C++/Snake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable bin/a.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/a.out.dir/build: bin/a.out

.PHONY : CMakeFiles/a.out.dir/build

CMakeFiles/a.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/a.out.dir/clean

CMakeFiles/a.out.dir/depend:
	cd /home/sarahkitty/Code/C++/Snake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sarahkitty/Code/C++/Snake /home/sarahkitty/Code/C++/Snake /home/sarahkitty/Code/C++/Snake /home/sarahkitty/Code/C++/Snake /home/sarahkitty/Code/C++/Snake/CMakeFiles/a.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/a.out.dir/depend
