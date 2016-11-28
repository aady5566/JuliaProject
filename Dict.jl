
list1 = [1,2,3,4,5]
list2 = [6,7,8,9,19]
dictionary1 = Dict(zip(list1,list2))
sort(collect(dictionary1))

t = sort(collect(dictionary1), by=tuple->tuple[2])
print(t)
t[1].first
