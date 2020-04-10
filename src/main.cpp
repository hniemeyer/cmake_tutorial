#include "algorithms.hpp"
#include <fmt/core.h>

int main() {
    fmt::print("Hello World");
    const auto result = add(5,6)+mul(3,4);
    fmt::print("The answer is {}.", result);
    return 0;
}