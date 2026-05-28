N = 500; a = 20; d = 1
n = 1:N
X = rcauchy(N, a, d)

# a)
M = cumsum(X) / n
mediany = c()
for (i in 1:N) mediany[i] = median(X[1:i])

plot(M, type = 'l', xlab = 'i', ylab = ' ', las = 1)
lines(mediany, lty = 2, col = 2)

# b)
odchylenia_std = c(); rozstepy = c()

for (i in 2:N){
  odchylenia_std[i-1] = sd(X[1:i])
  rozstepy[i-1] = IQR(X[1:i]) / 2
}
plot(odchylenia_std, type = 'l', xlab = 'i', ylab = ' ', las = 1)
lines(rozstepy, lty = 2, col = 2)
