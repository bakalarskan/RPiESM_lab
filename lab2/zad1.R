n1 = 20; n2 = 100; mi = 0; sigma = 1
x1 = rnorm(n1, mi, sigma)
x2 = rnorm(n2, mi, sigma)
plot(ecdf(x1), main = "n=20")
curve(pnorm(x, mi, sigma), add = TRUE, col = "red")
plot(ecdf(x2), main = "n=100")
curve(pnorm(x, mi, sigma), add = T, col = "red")
