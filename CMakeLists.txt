cmake_minimum_required(VERSION 3.13.3)
project(SnakeHealth VERSION 1.0.0)

include_directories(
	include/
	include/imgui
	include/imgui-sfml
)

find_package(SFML 2.5 COMPONENTS graphics window audio network system REQUIRED)

link_libraries(
	sfml-graphics
	sfml-window
	sfml-audio
	sfml-network
	sfml-system
	GL
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "-g -Wall -Wno-unused-variable")
	
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin/")

file(GLOB_RECURSE MAIN_SRC "src/*.cpp")
file(GLOB IMGUI_SRC "include/imgui/*.cpp")
file(GLOB IMGUI_SFML_SRC "include/imgui-sfml/*.cpp")

add_executable(a.out ${MAIN_SRC} ${IMGUI_SRC} ${IMGUI_SFML_SRC})