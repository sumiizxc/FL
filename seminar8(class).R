# 1 Гамма тархалтын тусламжтайгаар бетта тархалтыг загварчил 
# 2 Олон хэмжээст тархалтыг загварчил E-1, E-2 загварчил
# 3 Өө хараал идэг бичиж амжисангүй 
# hstatistic@gmail.com  2017-stat ner bodlogo_number
#1
n1 = 10; 
n2= 2
y=c()
curve((1/beta(n1,n2)*x^(n1-1)*(1-x)^(n2-1)))
for(i in 1:1000){
x1=(rgamma(1, n1))
x2=(rgamma(1, n2))
y[i]=x1/(x1+x2)
}
hist(y,freq = FALSE)
curve((1/beta(n1,n2)*x^(n1-1)*(1-x)^(n2-1)), add = TRUE)


z = c()

#2
x1 = c(1, 0.5, 0.2)
x2 = c(0.5, 1, 0.3)
x3 = c(0.2, 0.3, 1)
mycov = as.matrix(rbind(x1,x2,x3))
t(chol(mycov))%*%(chol(mycov))
crossprod(mycov)
det(mycov)
mycov_inv = solve(mycov)
mycov%*%mycov_inv
n = length(mycov[1,])
x=c()
C = chol(mycov)
x1=c()
x2=c()
x3=c()
mu = c(10,15,5)
for(j in 1:10000){
  z = as.matrix(rnorm(3))
  
  x = t(C) %*% z +(mu)
  x1[j] = x[1]
  x2[j] = x[2]
  x3[j] = x[3]
}
par(mfrow = c(1,3))
hist(x1)
hist(x2)
hist(x3)
par(mfrow = c(1,1))
cor(x1,x2)
cor(x1,x3)
cor(x2,x3)



#3
x =c()
n = 10000
alpha = 2 
for(i in 1:n){
  u = runif(1)
  x[i] = (-1/alpha)*log(u)
}
hist(x, freq = FALSE)
curve(dexp(alpha), add = TRUE)


#3 E-2
n = 700
u = runif(2*n-1)
u1 = u[1:n]
u2=sort(u[(n+1):(2*n-1)])
Y = c()
U = c()

for(i in 2:n){
  U[i]=u2[i-1]
}
U[1]=0
U[n+1]=1
OG = log(prod(u1))
for(i in 1:n){
  Y[i] = (U[i]-U[i+1])*OG
}
hist(Y, freq = FALSE, col= rainbow(19))
curve(dexp(x),add=TRUE, col = "#0000FF")


