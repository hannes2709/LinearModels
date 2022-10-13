#a)
load("Problem_14/percentile.RData")
plot(DATA$GPA, DATA$percentile)#scatterplot of percentile onto GPA
#b)
reg = lm(DATA$percentile~DATA$GPA)
abline(reg)
#We can see a negative correlation between percentile and GPA, which doesn't really
#make sense providing the education system works
#c)
reg2 = lm(DATA$percentile~DATA$GPA + as.factor(DATA$grade))
plot(DATA$GPA, DATA$percentile)
abline(reg2$coefficients[1], reg2$coefficients[2], col="blue")
abline(reg2$coefficients[1] + reg2$coefficients[3], reg2$coefficients[2], col="red")
#d)
reg3 = lm(DATA$percentile~DATA$GPA*as.factor(DATA$grade))
plot(DATA$GPA, DATA$percentile)
abline(reg3$coefficients[1], reg3$coefficients[2], col="blue")
abline(reg3$coefficients[1] + reg3$coefficients[3], reg3$coefficients[2] + reg3$coefficients[4],
       col="red")
#in model c), only the intercept of the two different grades was allowed to be different
#Now, also the slope is allowed to be different for the two groups.

#The reason for the regression in a) having negative correlation even tough in both
#grades we have positive correlation could be because 8th grade students put more
#effort into their GPA but are still not able to score higher than the 12th grade students
#in the standardized test (whilst having a higher GPA than the students of the 12th grade)