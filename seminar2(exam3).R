n=1000;
alpha=2;
u=runif(n);
X=c(1:n);
for(i in c(1:n)){
  X[i]=((-1)/alpha)*log(u[i]);
  print(X[i]);
}

hist(X, col="red", freq = FALSE);
curve(dexp(x), add= TRUE, col= "blue");


