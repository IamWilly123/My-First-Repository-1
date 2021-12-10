Xbar <- numeric(10)
#set.seed(3)
for (i in 1:10)
{
  x <- rexp(100, rate = 1/7)
  Xbar[i] <- mean(x)
}
hist(Xbar, col= "cyan", ylim=c(0,1),main="Simulated sampling distribution", xlab="means", freq=FALSE)
lines(10:20, dnorm(10:20, mean(Xbar), sd(Xbar) ), col="light green",type = "b") #overlay pmf for Normal(17)

Dev.off()
