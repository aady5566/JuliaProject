workspace()
a = Array{Int}(4,2)
aa = reshape(a,(2,4))

z = zeros(Float64,(2,2))

#uniform
rand(2,2)


fill(2.5,2,2)

eye(2,3)

vcat(2,2,1)# same as [2;2;1]

hcat(2,2,1) #same as [2 2 1]

#comprehensions
x = collect(1:8)

[ 0.25*x[i-1] + 0.5*x[i] + 0.25*x[i+1] for i=2:length(x)-1 ]
Float32[ 0.25*x[i-1] + 5*x[i] + 0.25*x[i+1] for i=2:length(x)-1 ]



sum(1/n^2 for n=1:1000)



[(i,j) for i=1:3 for j=1:i]


x = reshape(1:16, 4, 4)

x[2:3, 2:end-1]


x[map(ispow2, x)]


a = [2 2 1;4 5 6]; A = [1 1 1; 3 3 3]
#  broadcast(), which expands singleton dimensions in array arguments to match the corresponding dimension in the other array without using extra memory
broadcast(+, a, A)


# SparseMatrix
I = [1, 4, 3, 5]; J = [4, 7, 18, 9]; V = [1, 2, -5, 3];

# sparse(I, J, V[, m, n, combine])
# Create a sparse matrix S of dimensions m x n such that S[I[k], J[k]] = V[k]. The combine function is used to combine duplicates. If m and n are not specified, they are set to
S = sparse(I,J,V)
#find dim
findn(S)
#findz
findnz(S)


sparse(eye(5))


t2 = reshape(t, length(t), 1)

typeof(t2)
distJ
v = rand(6)
reshape(v,3,2)
