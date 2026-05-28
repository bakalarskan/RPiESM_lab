mi=5; sigma=2; alfa=0.05
N=10000; n=10
czy_wpada=replicate(N,
                    {
                      x=rnorm(n,mi,sigma)
                      przedz=t.test(x, conf.level=1-alfa)$conf
                      mi>=przedz[1] & mi<=przedz[2]
                    })
czy_wpada[1:10]
frakcje=sum(czy_wpada)/N