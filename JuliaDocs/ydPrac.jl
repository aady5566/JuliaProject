#by YD
function vararg(c...)
  c = collect(c)
  map(c) do x
    if x < 0
      abs(x)
    elseif x == 0
      0
    else
      x
    end
  end
end
vararg(-2,3,0,-1,5,4)

workspace()

#data writein
open("./writeout.txt","w") do f
  for i in iter
   write(f, "$i \n")
  end
end
workspace()


#
writedlm("./test.txt", rand(1:10, 20, 4), ", ")
