setwd("C:\\Users\\darkl\\Downloads\\IT24100885")
getwd()

#Question 01
#i)
#Binomial Theorum 
#ii)
#Here, random variabl X has binomial distribution with n=50 and p=0.85
1-pbinom(46,50,0.85, lower.tail = TRUE)

#Question 02
#i)
#X=number of calls in one hour
#ii)
#Poisson Distribution
#iii)
#Here, random variable X has poisson distribustion with lambda=12
dpois(15,12)
