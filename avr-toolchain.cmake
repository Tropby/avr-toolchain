cmake_minimum_required(VERSION 3.5.0)

set(CMAKE_SYSTEM_NAME       Generic         )
set(CMAKE_SYSTEM_PROCESSOR  avr             )


list(INSERT CMAKE_PROGRAM_PATH 0 "${CMAKE_CURRENT_LIST_DIR}/toolchain/bin")

set(CMAKE_C_COMPILER "${CMAKE_CURRENT_LIST_DIR}/toolchain/bin/avr-gcc.exe")
set(CMAKE_CXX_COMPILER "${CMAKE_CURRENT_LIST_DIR}/toolchain/bin/avr-g++.exe")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

include_directories("${CMAKE_CURRENT_LIST_DIR}/toolchain/avr/include")