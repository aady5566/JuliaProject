workspace()
#begin end block
z = begin
  x = 1
  y = 2
  x + y
end

# expression by semicolon
z = (x = 1;y = 3; x+y)

if 1
  println("true")
end


#ternary operator
x = 1
y = 2
println(x<y ? "<" : ">")

#udf
p(x) = println(x)
1 > 3 ? p("yes") : p("no")



t(x) = (println(x);true)
f(x) = (println(x);false)
t(1) && t(2)
f(1) && t(2)


function fact(n::Int)
  n >= 0 || error("n must be non-negative value")
  n == 0 && return 1
  n * fact(n-1)
end

@timev fact(5)

for i in [1,5,0]
  println(i)
end

for s in ["b","sf","dsfhg"]
  println(s)
end


#continue, break
for i = 1:10
  if i % 3 != 0
    continue
  end
  println(i)
end

for i = 1:50
  if i%2 == 0
    println(i)
  else
    continue
  end
  if i >= 20
    break
  end
end




#multiple nested
for i = 1:2, j = 3:4
  println((i,j))
end


#exception
f(x) = x>=0 ? exp(-x) : throw(DomainError())
f(1)
f(-1)


fussy_sqrt(x) = x >= 0 ? sqrt(x) : error("wrong")
fussy_sqrt(-1)

#warnings and infos
info("yo")
warn("to")


#trycatch
f(x) = try
 sqrt(x)
catch
 sqrt(complex(x, 0))
finally
  info("done")
end

f(1)
f(-1)
