# Pkg.add("DataFrames")
# Pkg.add("GLM")
# Pkg.add("Rmath")
# Pkg.add("Gadfly")
# Pkg.add("StatsFuns")

using DataFrames, GLM, Gadfly, StatsFuns
#Linear regression model
data = DataFrame(X=[1, 2, 3], Y=[2, 4, 7])
f = Y ~ X
fm = lm(f,data)
coef(fm)
residuals(fm)
predict(fm)
plot(data, x=:X, y=:Y, Geom.point)

#Multivariate linear regression (linear data)
points = 200
x = randn(points)
y = randn(points)
z = [10*i + 5*j + rand() for (i, j) in zip(x, y)]
data = DataFrame(X=x, Y=y, Z=z)
f =  Z ~ X + Y
MLR = glm(f, data, Normal(), IdentityLink())  # multivariate linear regression
(e, a, b) = coef(MLR)
plot(data, x=:X, y=:Y, Geom.point)  # 畫出x-y平面的投影，因為這兩個是independent variable，所以他們沒有相關性
stderr(MLR)  # 可以知道各係數的標準誤
predict(MLR)  # 一樣是訓練資料的預測值
loglikelihood(MLR)  # negative log likelihood
nobs(MLR)  # 用了幾筆訓練資料 (observations)

#Logistic Regression (binary data)
x = rand(points)
y = [(i^2 + 0.25*rand() > 0.5)? 1 : 0 for i in x]
data = DataFrame(X=x, Y=y)
plot(data, x=:X, y=:Y, Geom.point)  # 來看看資料長什麼樣子
logistic_ = glm(Y ~ X, data, Binomial(), LogitLink())
intercept, m = coef(logistic_)
l1 = layer(data, x=:X, y=:Y, Geom.point)
l2 = layer(x -> logistic(intercept + m*x), 0, 1, Theme(default_color=colorant"grey"))
plot(l1, l2)
