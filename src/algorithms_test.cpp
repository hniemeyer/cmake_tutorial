#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>
#include "algorithms.hpp"

TEST_CASE("Multiplication works", "[Multiplication]")
{
  REQUIRE(mul(1,1) == 1);
  REQUIRE(mul(2,5) == 10);
}

TEST_CASE("Addition works", "[Addition]")
{
  REQUIRE(add(1,1) == 2);
  REQUIRE(add(2,5) == 7);
}