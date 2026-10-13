cmake_minimum_required(VERSION 3.10)

# Set the project name and version
project(ReadMops VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Find the libuio library
find_library(UIO_LIBRARY uio HINTS /usr/local/lib /usr/lib /lib /usr/lib64)
find_path(UIO_INCLUDE_DIR libuio.h HINTS /usr/local/include /usr/include)

if(NOT UIO_LIBRARY)
    message(FATAL_ERROR "Could not find the uio library.")
endif()

if(NOT UIO_INCLUDE_DIR)
    message(FATAL_ERROR "Could not find the libuio header files.")
endif()

# Add the executable
add_executable(ReadMops eLinkMain.cpp ELinkMessageMap.cpp)

# Include directories
target_include_directories(ReadMops PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ${UIO_INCLUDE_DIR})

# Link the libuio library
target_link_libraries(ReadMops PRIVATE ${UIO_LIBRARY})
