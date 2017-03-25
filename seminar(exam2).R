n=1000; 
u=runif(n);
a=10;
b=100;
x=c(1:n);
for(i in c(1:n)){
  x[i]=a+(b-a)*u[i];
  print(x[i]);
}
par(mfrow=c(1,2))
hist(x);
hist(u);
par(mfrow=c(1,1))
