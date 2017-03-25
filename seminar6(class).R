# Семинар 6 статистик загварчлал
#case1
n= 1000; 
alpha = 2
betta = 4 
i = 0 ; 
x = c()
while(i < n)
{
  u = runif(2)
  y1 = 1 - (u[1])^(1/betta)
  y2 = (u[2])^(1/(alpha - 1))
  if(y2 < y1)
  {
    x[i] = y1
    i = i+1
  }
}
hist(x, freq = FALSE, col = rainbow(7))
curve(dbeta(x, 2, 4), add = TRUE, col = "BLUE")

# case2 
n = 10000
alpha = 2
betta = 4
x = c()
i=0;
while(i < n){
  u = runif(2)
  y1 = (u[1])^(1/alpha)
  y2 = (u[2])^(1/(betta - 1))
  if(y2 <1-y1)
  {
    x[i] = y1;
    i = i+1
  }
}
hist(x, freq = FALSE, col = rainbow(7))
curve(dbeta(x, 2, 4), add = TRUE)


# Тойрог дээр жигд тархалттай тооонууд
n = 10000
z1 = c()
z2 =c()
x = c()
i = 0
while(i<n){
u = runif(2)
x[1] = -1+2*u[1]
x[2] = -1+2*u[2]
Y = (x[1])^2+(x[2])^2
if(1<Y){
y = sqrt(Y)
z1[i]=x[1]/y;
z2[i]=x[2]/y;
i=i+1
}
}
plot(z1, z2)


(1/(1000*2(999)))*((pi)^(500)/gamma(500))



