#iteration
I = [2,3,4,4,5,10]

for i in I
  println(i)
end

#general collections
isempty([])

#dictionary
A = Dict("a"=>1,"b"=>2)
typeof(A)

endof("adfih")
endof([1 2 3 4 10])
length([1,2,3,4,5,6])

length(1:10)
x = 1:10
typeof(x)

a = 1:3:20
length(a)
for i in a
  println(i)
end
4 in a
5 in a


#indexin
a = ['a', 'b', 'c', 'b', 'd', 'a'];
b = ['a','b','c'];
indexin(a,b)

#findin
a = collect(1:3:15)
b = collect(2:4:10)
typeof(a)
c = 2:4:10
typeof(c)
findin(a,b)
#10 is the only common element
a[findin(a,b)]


unique([1,2,2,2,3,3,4,4,4])

any(a)






#any
