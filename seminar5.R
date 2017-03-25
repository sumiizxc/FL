#Статистик хэрэглээний программууд 
#Семинар 5 
#Дасгал 31
X = c('A','A','B','B','A','B','B','A','B','B','A','A','A')
#A.
a = 0;
b = 0
for(i in 1:length(X)){
  if(X[i] == 'A'){
    a = a+1;
  }else{
    b = b+1;
  }
}
print(a)
print(b)

#B.
table(X)#олон давталт нөхцөлийг хөнгөвчилсөн функц байна.

#Дасгал 32
View(HairEyeColor)
require(graphics)
mosaicplot(HairEyeColor)
male = HairEyeColor[,,"Male"]
female = HairEyeColor[,,"Female"]
'+'(male, female)


#Дасгал 33
#A
Kappa = c(-1, 0, 1)
n = 15
x = c()
frandom<-function(x){
  switch(x, -1,0,1)
  
}
for(i in 1:n){
  u = trunc(runif(1,1,4))
  x[i]=frandom(u)
}
print(x)
#B
x = sample(Kappa, 15, replace = TRUE)
print(x)


#Дасгал 34
df = data.frame(X = c(2,1,4,3), Y = c('A','B','A','B'))
class(df)
tapply(df$X, df$Y, sum)


#Дасгал 35







#Дасгал 36
cattle = data.frame(Year = c(1985:1990), stock = c(4995.7, 5258.2, 5511.7, 5922.2, 6846.6, 8242.9))
#A 
x=c()
for(i in 1:5){
  x[i] = cattle$stock[[i+1]] - cattle$stock[[i]]
}
print(x)

#B
diff(cattle$stock)


#Дасгал 37
#A
library(PASWR)
data("WeightGain")
x = c()
for(i in 1:dim(WeightGain)[1]){
  if((WeightGain$ProteinSource[[i]] == "Beef") && (WeightGain$ProteinAmount[[i]] == "Low")){
    x[i] =WeightGain$weightgain[[i]] 
  }
}
print(x)
mean(x, na.rm = TRUE)

#B
aggregate(WeightGain$weightgain, by = list(WeightGain$ProteinSource, WeightGain$ProteinAmount), FUN = mean, na.rm = TRUE)


