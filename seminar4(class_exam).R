#class in exam 1 with seminar 4th 
N = 10000
x = c()
for(i in  1:N){
  u = runif(2)
if(u[1]<= 3/4)
{
  x[i] = -1 + 2*u[2]
}else 
{
  x[i] = sign(2*u[2]-1)*(abs(2*u[2]-1)^(1/3));
}
}
print(x)
hist(x)



#class in exam 2th with seminar 4th
N = 1000
n = 10
x = c()
for(i in 1:N)
{
u = runif(2)
x[i] = (-1)*((u[1])^(1/n))*log(u[2])
}
print(x)
hist(x)


#class in exam 3th with seminar 4th 

N = 10000
X = c()
for(i in 1:N){
  u = runif(2)  
  if(u[1]<= 5/6)
  {
    X[i] = 2*u[2]
  }else
  {
    X[i] = sign(2*u[2]-1)*(abs((2*u[2]-1)^(1/5)))+1
  }
}
print(X)
hist(X)
curve((5/12)*(1+(x-1)^4), xlim = c(0,2))
