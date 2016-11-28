workspace()

x = 12
convert(AbstractFloat,x)

# even though some strings can be parsed as numbers, most strings are not valid representations of numbers
convert(String,x)

a = Any[1 2 3 ; 4 5 6]
convert(Array{Float64},a)


#new convert type
convert(::Type{Bool}, x::Real) = x==0 ? false : x==1 ? true : throw(InexactError())
