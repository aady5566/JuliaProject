typeof(1)
# 檢查型態的最大最小值
(typemin(Int64), typemax(Int64))



for T in [Int8,Int16,Int32,Int64,Int128,UInt8,UInt16,UInt32,UInt64,UInt128]
         println("$(lpad(T,7)): [$(typemin(T)),$(typemax(T))]")
       end


# over flow demo
x = typemax(Int64)
x+1 == typemin(Int64)

# floating point
1.9
1e5
bits(1.9)
-0 == 0
bits(0)
bits(-0)


#not equal in bits
bits(-0.0) == bits(0.0)
bits(-0.0)
bits(0.0)

Inf
1/Inf
1/0
1/0.0


x = 1.1; y = 0.1
x + y

h= parse("hello",2)

h

#Numeric Literal Coefficients
x = 3
2^2x

2(x-1)^2 - 3(x-1) + 1
#這裡報錯的原因是 後者括號會被誤認為 function的參數
(x-1)(x+1)
(x+1)(x-1)
