#include "my_class.h"
#include <iostream>

using namespace acj;

void MyClass::greet()
{
  std::cout << "Hello reader! This is MyClass!\n";
}

int MyClass::answer() const
{
  return 42;
}