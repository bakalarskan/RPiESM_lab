curve(dchisq(x,5), xlim = c(0,60), ylim = c(0,0.2))
curve(dchisq(x,10), add = T, col = 3)
curve(dchisq(x,40), add = T, col = 4)
curve(dnorm(x, 40, sqrt(80)), add = T, col = 2)