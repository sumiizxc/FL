N=1000; 
M=10
z = matrix(data = c(seq(from = 1, to = 20, by = 1)),ncol = 2, byrow = TRUE);
for(i in 1:M)
{
  u=runif(N);
  X=c(1:N);
  for(j in 1:N){
    X[j]=(u[j])^(1/N);
  }
  z[[i,1]]=max(X, na.rm = TRUE);
  z[[i,2]]=min(X, na.rm = TRUE);
}
print(z)