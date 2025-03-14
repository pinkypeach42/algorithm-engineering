#include "fizzbuzz.h"

std::string fizzbuzz(int number) {
    if (number != 0) {
        auto m3 = number % 3;
        auto m5 = number % 5;
        if (m3 == 0 && m5 == 0) {
            return "fizzbuzz";
        } else if (m3 == 0) {
            return "fizz";
        } else if (m5 == 0) {
            return "buzz";
        }
    }
    return std::to_string(number);
}