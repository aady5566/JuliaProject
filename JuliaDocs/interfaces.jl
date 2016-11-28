workspace()

immutable Squares
  count::Int
end
#定義 Squares 算則
Base.start(::Squares) = 1
Base.next(S::Squares, state) = (state*state, state+1)
Base.done(S::Squares, state) = state > S.count;
Base.eltype(::Type{Squares}) = Int # Note that this is defined for the type
Base.length(S::Squares) = S.count;


Squares(4)

for i in Squares(7)
  println(i)
end


c = collect(Squares(100))

mean(Squares(100)), std(Squares(100))

c[c > 9000]

A = SparseArray(Float64,3,3)
SparseArrays
