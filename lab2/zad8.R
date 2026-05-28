N=50; n=10
mi=1; sigma=2; alfa=0.05

wyniki=replicate(N,
                 {
                   x=rnorm(n,mi,sigma)
                   t.test(x,conf.level=1-alfa)$conf
                 })
matplot(wyniki, rbind(1:N, 1:N), type='l', lty=1, col=c('pink', 'purple'), las=1,
        xlab='granice przedziału', ylab='nr przedziału')
abline(v=mi, col='magenta')