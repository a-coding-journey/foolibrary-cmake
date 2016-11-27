#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <doctest/doctest.h>
#include "my_class.h"

using namespace acj;

TEST_CASE("Testing my_class class of LibraryOne") 
{
  MyClass my_class{};
  my_class.greet();

  CHECK(my_class.answer() == 42);
}