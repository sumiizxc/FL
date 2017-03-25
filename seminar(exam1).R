for(i in c(1:10)){
    print(i)
    i=i+1
    
}
n=1000;
u=runif(n);
x=c(1:n);
for(i in c(1:n))
{
  x[i]=sqrt(u[i]);
  print(x[i]);
}
par(mfrow=c(1,2))
hist(x);
hist(u);
par(mfrow=c(1,1))