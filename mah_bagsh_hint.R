M= 10
N = 1000
Result = c()
for(i in 1:M){
  Result = rbind(Result, 
            range(runif(n = N)
              ))
}
print(Result)