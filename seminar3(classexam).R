N=3
u=runif(1);
x=c(0, 1, 2, 3)
X=c()
C=c(1/8, 1/2, 3/8)
P = c()
Fu = c()
Fu[1]=0.000
for(i in c(1:N))
{
  P[i] = C[i]*(x[i+1]-x[i]);
}

Fu[2] = P[1];
for(i in c(2:N))
    {
      Fu[i] = Fu[i-1]+P[i]
}
for(i in c(1:N)){
  if (Fu[i] <= u & u < Fu[i+1])
  {
    
      X[i]=x[i]+((u[i]-Fu[i])/C[i]);
    
     
  }
}
print(X)