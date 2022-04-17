cmake_minimum_required(VERSION 3.0.0)

list(APPEND CMAKE_PROGRAM_PATH "${CMAKE_CURRENT_LIST_DIR}/toolchain/bin")

set(CMAKE_C_COMPILER "${CMAKE_CURRENT_LIST_DIR}/toolchain/bin/avr-gcc.exe")
set(CMAKE_CXX_COMPILER "${CMAKE_CURRENT_LIST_DIR}/toolchain/bin/avr-g++.exe")

include_directories("${CMAKE_CURRENT_LIST_DIR}/toolchain/avr/include")