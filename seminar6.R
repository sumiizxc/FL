# статистик хэрэглээний програм семинар 6 
# Дасгал 38
X = rnorm(1)
shinjuur <- function(x){
  if(X>=0)
  {
    if(X>0)
    {
      return(("Positive"))
    }
    else{
      return(("Zero"))
    }
  }
  else{
    return(("Negative"))
  }
}
shinjuur(X)

#Дасгал 39
data1=read.csv(file ="C:/Users/Dell/Downloads/heptathlon.csv", header = TRUE)
X = data1$longjump
m= 6.15
k=0;
Sign.number <- function(X,m){
  n = length(X)
  
  for(i in 1:n){
    if(X[i]> m)
    {
      k=k+1
    }
  }
  return(k)
}

#Дасгал 40

'%compare%'<-function(x,y){
  if(x==y) {
    return(TRUE)
  }else{
    return(FALSE)
  }
}
'%compare%'(1,1)
'%compare%'(1,2)

#Дасгал 41.A
X = rnorm(25)
des.stat <- function(x){
  list("min" = min(X), "max" = max(X), "median" = median(X), "mean" = mean(x))
}

#Дасгал 41.B
birth.male = c(103.9, 102.6, 105.7, 102, 104.2, 103, 104.2, 103.1, 104.1, 102.5, 104.3, 104.5, 103.6, 106.1, 106.1)
X = birth.male
des.stat(X)


#Дасгал 42
f = function(){
  g = function(){
    print("hello")
  }
  g()
  print("world")
}
f() # энд 3 хүрээлэл байна


#Дасгал 43

clVar <- function()
{
  env <- parent.frame()
  rm(
    list = setdiff( ls(all.names=TRUE, env = env), lsf.str(all.names=TRUE, env = env)),
    envir = env
  )
}


rm(list = setdiff(ls(), lsf.str()))


rm(list=ls())
