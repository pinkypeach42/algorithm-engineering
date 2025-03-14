cmake_minimum_required(VERSION 3.9)
project(quantpng LANGUAGES C CXX)

# C++
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# OpenMP (damit es überhaupt auf meinem Mac funktioniert..)
find_package(OpenMP)
if(OpenMP_CXX_FOUND)
    message(STATUS "OpenMP gefunden: ${OpenMP_CXX_FLAGS}")
   

    if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        set(OpenMP_CXX_FLAGS "-Xpreprocessor -fopenmp -I$ENV{HOMEBREW_PREFIX}/opt/libomp/include")
        set(OpenMP_CXX_LIBRARIES "$ENV{HOMEBREW_PREFIX}/opt/libomp/lib/libomp.dylib")
    endif()

endif()

# Subdirectories
add_subdirectory(lodepng)
add_subdirectory(quantize)

#Haupt-Executable
add_executable(quantpng main.cpp)

#Bibliotheken aus Unterverzeichnissen
target_link_libraries(quantpng PRIVATE lodepng quantize)

if(OpenMP_CXX_FOUND)
    target_compile_options (quantpng PRIVATE ${OpenMP_CXX_FLAGS})
    target_link_libraries(quantpng PRIVATE OpenMP::OpenMP_CXX)
endif()
