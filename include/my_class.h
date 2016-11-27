/**
 * Author: Michele Adduci
 * A Coding Journey
 * Example Class
 */
#ifndef _MY_CLASS_H_
#define _MY_CLASS_H_

#include "fooproject_export.h"
//A Coding Journey
namespace acj
{
  class FOOPROJECT_EXPORT MyClass
  {
    public:
      MyClass() = default;
        
      void greet();

      int answer() const;
  };
}

#endif