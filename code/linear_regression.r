#The general mathematical equation for a linear regression is −

y = ax + b

#y is the response variable.
#x is the predictor variable.
#a and b are constants which are called the coefficients.

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Creating the relation for linear regression formula
relation <- lm(y~x)

print(relation)
print(summary(relation))

#predict with the defined model
a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)

plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")
