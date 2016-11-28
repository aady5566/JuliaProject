workspace()
# type assertion operation
f2(x::Float64,y::Float64) = sqrt(2x + y)
f(2.5,3.0)
methods(f)

# more genral type
super(Float64)
super(AbstractFloat)
super(Real)
f(x::Number,y::Number) = (sqrt(2x+y))
f(2,3)
methods(f)

# In the absence of a type declaration with ::, the type of a method parameter is Any by default
methods(+)



mytypeof{T}(x::T) = T
mytypeof(5)

same_type{T}(x::T,y::T) = true;
same_type(x,y) = false;

same_type(5,6.0)

same_type(6.0,5)
same_type(5.0,6.0)
