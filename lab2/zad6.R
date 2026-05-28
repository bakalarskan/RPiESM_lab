dim(Cars93)
head(Cars93)
x=Cars93$MPG.city
# Cars93$zp.m = 1/x * (3.8*100)/1.6
zp.m=3.8*100/(1.6*x)
# jedno zp poza ramką drugie w ramce jeszcze nie wiem o co chodzi

mean(zp.m)
median(zp.m)
quantile(zp.m, c(0.1, 0.25, 0.5, 0.75, 0.9))

var(zp.m)
sd(zp.m)
IQR(zp.m)
max(zp.m)
min(zp.m)

skewness(zp.m)
kurtosis(zp.m)

#package moments do kurtozy i

h=hist(zp.m, prob=T, col='pink')

b=boxplot(zp.m~Cars93$Origin, col='pink')
b2=boxplot(Cars93$MPG.city~Cars93$Origin)

y=table(Cars93$Type)
pie(y)