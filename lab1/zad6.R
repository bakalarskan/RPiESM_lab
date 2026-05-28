N = 10000
k=20
theta = 1

estymatory = replicate(N, 
                       {x = runif(k,0,theta)
                       c(2*mean(x),max(x))
                       })
#nieobowiązkowe
dim(estymatory)
# pierwsze 7 wyników
estymatory[,1:7]

mean(estymatory[1,]) - theta
mean(estymatory[2,]) - theta
par(mfrow = c(2,1))
plot(estymatory[1,], las = 1, xlab = ' ', ylab = 'EMM', cex = 0.2)
plot(estymatory[2,], las = 1, xlab = ' ', ylab = 'ENW', cex = 0.2)
