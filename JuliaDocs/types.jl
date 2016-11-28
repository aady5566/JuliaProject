workspace()

# type declarations ::
# 1.As an assertion to help confirm that your program works the way you expect,
# 2.To provide extra type information to the compiler, which can then improve performance in some cases
# the :: operator is read as “is an instance of”

(1+2)::AbstractFloat

(1+2)::Int

typeof(sinc(2))

function ss(x)::Float64
  if x==0
    return 1
  end
  return sin(pi*x)/(pi*x)
end

typeof(ss(2))

# abstract types
# We begin with abstract types even though they have no instantiation because they are the backbone of the type system: they form the conceptual hierarchy which makes Julia’s type system more than just a collection of object implementations.

# <: 'is a subtype of'
# abstract Number
# abstract Real     <: Number
# abstract AbstractFloat <: Real
# abstract Integer  <: Real
# abstract Signed   <: Integer
# abstract Unsigned <: Integer

Integer <: Number
Integer <: AbstractFloat

function myplus(x::Int,y::Int)
    x+y
end


# Composit type
# composite types are the only kind of user-definable type

type Foo
  bar::AbstractString
  baz::Int
  qux::Float64
end

foo = Foo("asf",12,2.6)
typeof(foo)
#list fieldnames
fieldnames(foo)
#find field value
foo.bar
foo.qux = 3.55


#immutalbe composite types
immutable Complex
  real::Float64
  imag::Float64
end
c = Complex(6,8)
fieldnames(c)
c.im = 10


# Parametrix Types
type Point{T}
    x::T
    y::T
end
Point{Float64}
Point{AbstractString}

p = Point{AbstractString}("5","7")
fieldnames(p)
p.x

Point{Float64} <: Point

#Even though Float64 <: Real we DO NOT have Point{Float64} <: Point{Real}.

function norm{T<:Float32}(p::Point{T})
   sqrt(p.x^2 + p.y^2)
end

norm(Point(5,6))

typeof(Point(2,4))
typeof(Point(2.0,4.0))

#parametric  Composite type
abstract Pointy{T}

workspace()

#Given such a declaration, for each choice of T, we have Point{T} as a subtype of Pointy{T}
type Point{T} <: Pointy{T}
  x::T
  Y::T
end

Point{Float64} <: Pointy{Float64}

Point{Float64} <: Pointy{Real}

#tuple
immutable Tuple2{A,B}
  a::A
  b::B
end

t = Tuple2(2,3)
fieldnames(t)
t.a
t.b

# singleton type
# the “singleton type” Type{T} is an abstract type whose only instance is the object T
isa(Float64, Type{Float64})

# The isa function tests if an object is of a given type and returns true or false:
isa(1,Int)

# supertype
supertype(Float64)
supertype(AbstractString)
supertype(String)
