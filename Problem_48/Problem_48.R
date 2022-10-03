library(MASS)#to sample from multivariate normal distribution
#Part 2
m = matrix(c(5,3,3,5)/2, ncol = 2)
eig = eigen(m)
print(eig$vectors)
#Part 3
data = mvrnorm(100, c(0,0), m)
svd = svd(data)
