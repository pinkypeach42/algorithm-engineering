cmake_minimum_required(VERSION 3.9 FATAL_ERROR)
project(FizzBuzzBib)

add_library(fizzbuzz STATIC include/fizzbuzz.h src/fizzbuzz.cpp)

#*wo findet man interface?
target_include_directories(fizzbuzz PUBLIC include)