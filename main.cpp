#include <iostream>
#include "algorithms.hpp"

int main() {
    std::cout << "Hello World\n";
    const auto result = add(5,6)+mul(3,4);
    std::cout << result << '\n';
    return 0;
}