# # 等同於
# function f(x,y)
#   x + y
# end

# assignment form, must be a single expression
f(x,y) = x + y


∑(x,y) = x + y

#operator as function
+(1,2,3)

f = +;
f(1,2,3)

#清空所有暫存區
workspace()


#anonymous functions
x -> x^2 + 2x - 1
#also accept multiple arguments
(x,y,z)->2x+y-z

#A classic example is map(), which applies a function to each value of an array and returns a new array
map(round,[1.2,3.5,1.7])

map(x -> x^2 + 2x - 1, [1,3,-1])


#Multiple Return Values
workspace()

function f(a,b)
  a+b, a*b
end

x = f(2,3)

typeof(f(2,3))

#extract tuple Values
m,n = f(2,3)

#Varargs Functions
bar(a,b,x...) = (a,b,x)
bar(1,2)
x = bar(1,2,3)
x
bar(1,2,3,4,5,6)

foo(x...) = collect(x)
foo(1,2,3,4,5)
t = (55,666)

bar(1,2,t)

f(x,y) = x^2x+5y+9
@time(f(110,4))

@timev(f(110,4))
@elapsed(f(110,4))
@allocated(f(110,4))
gc()


x = colon(1,2,3)

typeof(x)

x = [3,4]
typeof(x)

#Do-block syntax for function arguments
x= map([5,-2,0]) do x
  if x < 0 && iseven(x)
    abs(x)
  elseif x==0
    0
  else
    x
  end
end

function arg(a,b,c)
  map([a,b,c]) do x
    if x < 0 && iseven(x)
      abs(x)
    elseif x==0
      0
    else
      x
    end
  end
end

arg(-3,-2,0)

t = (-1,-2,0)
c = collect(t)
v = [4,4,5]
typeof(c) == typeof(v)
v = [4,4,5]


#dot: Vectorizing Functions
X = 1:500000

gc()
@timev @fastmath sin.(cos.(X)) #等同於 broadcast(x -> sin(cos(x)),X)

ysin = sin()

@time [sin(cos(x)) for x in X] #first allocate one temporary array for tmp=cos(X), and then compute sin(tmp) in a separate loop



function aaa(x,y)::Int64
  x+y
end
aaa(1,2)
