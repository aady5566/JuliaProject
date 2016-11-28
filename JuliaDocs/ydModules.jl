workspace()
module YdModule
  function __init__()
    println("init")
  end
  type Mytype
    x::Int
  end
  function f(a,b)
    a+b
  end
  include("./ydExternalFunc.jl")
end

YdModule.multiply(5,6)
using YdModule: f, Mytype, multiply


m = YdModule.Mytype(5)
fieldnames(m)
m.x

f(4,3)
Mytype(5)

multiply(7,2)
