#include <iostream>
#include "algorithms.hpp"

int main() {
    std::cout << "Hello World\n";
    const auto result = add(5,6);
    std::cout << result << '\n';
    return 0;
}