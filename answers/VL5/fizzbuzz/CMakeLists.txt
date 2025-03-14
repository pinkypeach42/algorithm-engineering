cmake_minimum_required(VERSION 3.9)
project(FizzBuzzProject LANGUAGES CXX)


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
add_subdirectory(fizzbuzz)
add_subdirectory(catch)

#Executable 
add_executable(fizzbuzz_tests catch_main.cpp catch_tests_fizzbuzz.cpp)

# link libraries picomp and catch to executable
target_link_libraries(fizzbuzz_tests PRIVATE fizzbuzz PRIVATE catch)
