#include "catch.hpp"
#include "fizzbuzz.h"


// TEST_CASE macro "FizzBuzz Tests" 
// der erste Parameter - "FizzBuzz Tests" - der Name des Testfalls
// der zweite - ein Tag (um Gruppe von Tests zu erkennen)
TEST_CASE("FizzBuzz Tests", "[fizzbuzz]") {
    REQUIRE(fizzbuzz(1) == "1"); //sprich fizzbuzz(1) soll "1" zurückgeben
    REQUIRE(fizzbuzz(3) == "fizz");
    REQUIRE(fizzbuzz(5) == "buzz");
    REQUIRE(fizzbuzz(15) == "fizzbuzz");
    REQUIRE(fizzbuzz(0) == "0");
}