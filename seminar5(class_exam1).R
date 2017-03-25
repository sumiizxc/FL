R = 2
curve((2/(pi*R^2))*sqrt(R^2-x^2), xlim = c(-R, R))
x = runif(1)*2*R - R
m = (2/(pi*R^2))*R



fx = (2/(pi*R^2))*sqrt(R^2-x^2)

R = 2 
x = c()
n = 100000
for(i in 1:n)
{
u = runif(2)
Y = -R + (2*R)*u[2]
gY = (1/(R^2))*sqrt(R^2-Y^2)
if(u[1]<= gY)
{
  x[i] = Y
}
}
hist(x, freq = FALSE, col = rainbow(7))
curve((2/(pi*R^2))*sqrt(R^2-x^2), add = TRUE)

