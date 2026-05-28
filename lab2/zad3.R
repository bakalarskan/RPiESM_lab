x = dbinom(0:10, 10, 0.5)
y = dbinom(0:50, 50, 0.25)
z = dbinom(0:50, 50, 0.5)

par(mfrow=c(3,1))
barplot(x, names.arg = 0:10)
barplot(y, names.arg = 0:50)
barplot(z, names.arg = 0:50)