mi = 4; sigma = 2; N = 500
n = 1:N
set.seed(100)
X = rnorm(N, mi, sigma)
M = cumsum(X) / n

# liczymy mediany
# najpierw robimy miejsce czyli tworzymy wektor
mediany = c()
for (i in 1:N) mediany[i] = median(X[1:i])
# median to nazwa funkcji
odchylenia_std = c(); rozstepy = c()
# sd - liczy odchylenie standardowe
# IQR - oblicza rozstępy międzykwartylowe

# zaczynamy od 2 nie 1
for (i in 2:N) {
  odchylenia_std[i - 1] = sd(X[1:i])
  rozstepy[i-1] = IQR(X[1:i]) / 1.35 #IQR/sigma = 1,35
}

plot(M, type = 'l', xlab = 'i', ylab = ' ', las = 1)
# już nie plot tylko lines żeby było na jednym wykresie
lines(mediany, lty = 2, col = 3)
abline(h = mi, col = 13)

# wypełnia w kolejności col - kolumnowej, row - rzędy
# par(mfrow = c(w,k))
# par(mfcol = c(w,k))

plot(odchylenia_std, type='l', xlab='i', ylab=' ', las = 1)
lines(rozstepy, lty = 2, col = 3)
abline(h = sigma)