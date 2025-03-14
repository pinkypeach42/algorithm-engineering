cmake_minimum_required(VERSION 3.16)

project(ImageEnhancer)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(SOURCES
        src/main.cpp
        src/enhancer.cpp
        src/stbImpl.cpp
        src/cli.cpp
        src/utils.cpp
        src/benchmark.cpp
)

add_executable(ImageEnhancer ${SOURCES})
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_SOURCE_DIR}/header)
include_directories(${PROJECT_SOURCE_DIR}/libraries)


find_package(OpenMP REQUIRED)
if(OpenMP_CXX_FOUND)
    target_link_libraries(ImageEnhancer PRIVATE OpenMP::OpenMP_CXX)
endif()
