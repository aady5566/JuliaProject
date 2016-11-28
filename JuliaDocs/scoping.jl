workspace()

#making module (local)
#Each module introduces a new global scope, separate from the global scope of all other modules;
module Bar
  x = 1
  foo() = x
end

#import or using
import Bar

x = -1

Bar.foo()


module A
  a = 1
end

module B
  module C
    c = 2
  end
  b = C.c
  import A
  d = A.a
end

import B
B.d
B.b
B.C.c
A.a

#defining local var
x = 0
for i in 1:10
  local x
  x = i + 1
  println(x)
end

#defining global var
for i= 1:10
  global z
  z = i
end

#const solves performance problem
const x = 5
