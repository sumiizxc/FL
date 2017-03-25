N = 250;
Y = c()
Yt = C()
X = matrix(data = c(1:(2*N)), nrow = 2, byrow = TRUE)
Y = rnorm( n = N*2, mean = 0, sd =1)
Y = matrix(data = c(Y), ncol = 2, byrow = TRUE)
mu = matrix(data = c(3, 2), nrow = 2, byrow = TRUE)
Sig = matrix(data = c(1, -1.5, -1.5, 4), ncol = 2, byrow = TRUE)
X = matrix(data = c(), ncol = 2, byrow = TRUE)
attach(library(expm))
Sig_ = sqrtm(Sig)
Yt = t(Y)
print(X)
for(i in c(1:n)){
X[,i]=Sig_%*%Yt[,i]+mu
}
print(X)
summary(X[1,])
var(X[1,])
summary(X[2,])
var(X[2,])
cov(X[1,], X[2,])