workspace()
# In Julia, type objects also serve as constructor functions
type OrderedPair
  x::Real
  y::Real
  # OrderedPair(x,y) = x > y ? error("out of order") : new(x,y)
  OrderedPair(x,y) = new(y,x)
end

OrderedPair(1,2)
OrderedPair(2,1)
