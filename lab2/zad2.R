N=1000; mi=0; sigma=1
a=rnorm(N, mi, sigma)
h=hist(a, prob=T, ylim=c(0, 0.5), col='pink')
lines(density(a, bw=0.01), col='magenta') # 0.01 dziwny wykres, 0.5 ładny wykres
curve(dnorm(x, mi, sigma), add=T, col='purple')