#generating regressor
x = runif(100, 0, 2)
#generating noise
error = rnorm(100, 0, 1/100)
#creating dependent variable y
y = 10 + 2 * sin(pi*x) + error
plot(x,y)
#find a transformation for the x-axis such that the dependence is linear:
#since we know how the data is generated, we know what transformation to use.
plot(sin(pi * x),y)
#We can see that the constant 10 is the intercept (where our line crosses 0) 
#the constant 2 is the slope

#Simulating the same experiment with other y values
y2 = exp(15 + 3 * log(x) + error)
plot(x,y2)#to see what transformation we could use, notice that the variance seems
#to be increasing which indicates we don't have a linear model and we should transform
#the response y. Since the variance is increasing, it could make sense to use a 
#log transformation for the response. But since we know how the data is generated
#it is easy.
#transform the x-axis (as before). Note that we have y = exp(15 + 3log(x) + e )
# <-> log(y) = 15 + 3log(x) + e, so we also need to transform the y-axis
plot(log(x), log(y2))
#so the first dependent variable follows a linear model, the second one doesn't 
#(it only does after we log transform the y values)