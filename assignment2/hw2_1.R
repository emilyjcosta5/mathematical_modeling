x <- c(-5,-4,-3,-2,-1,0,1,2,3,4)
y <- c(371.04,136.49,50.21,18.47,6.79,2.49,0.92,0.342,0.129,0.049)

png("all_plots.png")
par(mfrow=c(3,1))
# Make the original plot
plot(x,y,main="Original")

#straightened out plot
plot(x,log(y),main="Linearized")

# Fit the "linear" model
#fit = lm(log(y) ~ x)
#fit$coefficients
#Output:
#(Intercept)           x 
#  0.9300116  -0.9944674 
#summary(fit)
#Output:
#Call:
#lm(formula = log(y) ~ x)

#Residuals:
#      Min        1Q    Median        3Q       Max 
#-0.018926 -0.012773  0.000001  0.007640  0.031923 

#Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
#(Intercept)  0.930012   0.005419   171.6 1.49e-15 ***
#x           -0.994467   0.001859  -535.0  < 2e-16 ***
#---
#Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#Residual standard error: 0.01688 on 8 degrees of freedom
#Multiple R-squared:      1,	Adjusted R-squared:      1 
#F-statistic: 2.863e+05 on 1 and 8 DF,  p-value: < 2.2e-16

# Resulting equation: log(y) = .93 - .99x + 0.02
# y = exp(.95 - .99x)
# y = 2.59*exp(-.99*x)
# a = 2.59
# b = -.99

# Visualize results
#library(dvir)
exp <- expression(y=2.59*e^(-0.99*x))
print(exp)
# Plotting graph with fitted line
y <- 2.59*exp(-0.99*x)
#plot
plot(x,y,main=paste("Line Fitted to y=",exp))
lines(x, y, lty=2, col='red', lwd=3)
