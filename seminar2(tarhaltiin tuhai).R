hist(rnorm(n6 = 15, mean = 1, sd = 2))
pnorm(q= 1, mean= 0, sd = 1, lower.tail = FALSE) # lower.tail parametr ni zuun talaas tootsoh eswel baruun talaas tootsoh eshiig bodno :P 
dnorm(x = 0.51, mean = 0 , sd= 1)
round(dnorm( x = seq(from = 0, to =5.09, by = 0.01), mean = 0, sd = 1), digits = 6)
#round function is added countable digits of numbers.
x = matrix(data = round(
  dnorm(x = seq(from = 0,
                to =5.09, 
                by = 0.01),
       mean = 0, 
       sd = 1),
       digits = 6),
       ncol = 10,
       byrow = TRUE)
dim(x)



#studentiin tarhaltiin sonirhoyo
qt(p = 0.05, 
     df = 5,
   lower.tail = FALSE
)
