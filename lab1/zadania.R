N = 1000
n = 1:N; p = 0.25 # może być też n <- 1:N
set.seed(100) # nieobowiązkowe

# a) rozkład dwupunktowy
X = rbinom(N, 1, p) # 1, p - parametry rozkładu
# a = 7:2 // liczby od 7 do 2
# n[1:7] - odwołujemy się do pierwszych 7 elementów
# b = a[-2] - b będzie miało wszystkie elementy co a oprócz drugiego (tuaj 6)
# nie używać jako zmiennej c bo to nazwa funkcji, która tworzt wektor
# t - transpozycja macierzy
# rt - rozkład t studenta
# dt, pt, qt, rf, df, pf, qf
# T, F - prawda fałśz
# x = c(b, a)
# y = 2:10
# x+y
S = cumsum(X) # robi sumy skumulowane, taki szereg - ciąg sum
M = S / n # ciąg średnich
plot(M, type = 'l') # domyślnie bez type narysuje kropki
abline(h = p, col = 2) # funkcja do rysowania prostej, h jak horizontal, v jak vertical
# col = 2 to czerwony ale można też 'red' podać

# b) rozkład wykładniczy
lambda = 1/3
X2 = rexp(N, lambda)
S2 = cumsum(X2)
M2 = S2 / n
plot(M2, type = 'l')
abline(h = 1/lambda, col = 2)


# c) rozkład Cauchy'ego
a = 0; d = 1
X3 = rcauchy(N,a, d)
S3 = cumsum(X3)
M3 = S3 / n
plot(M3, type = 'l')

# MOCNE PRAWO WIELKICH LICZB
# Im większa próba tym średnia arytmetyczna z tej próby będzie bliższa teoretycznej wartości oczekiwanej