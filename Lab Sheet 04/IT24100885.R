# 1

setwd("C:\\Users\\IT24100885\\Desktop\\IT24100885")
getwd()

branch_data<-read.table("Exercise.txt",header=TRUE,sep = ",")

fix(branch_data)
attach(branch_data)

# 2
class(Sales_X1)
class(Advertising_X2)
class(Years_X3)

scale(branch_data)

# 3
boxplot(Sales_X1,main = "Box plot for Sales",outline=TRUE,outpch=8,horizontal=TRUE)

# 4
summary(branch_data$Advertising_X2)
quantile(branch_data$Advertising_X2)

IQR(branch_data$Advertising_X2)

# 5 

get.outliers <- function(x) {
  q1 <- quantile(x, 0.25)
  q3 <- quantile(x, 0.75)
  IQR <- q3 - q1
  
  lower_bound <- q1 - 1.5 * IQR
  upper_bound <- q3 + 1.5 * IQR
  
  print(paste("Upper Bound = ", upper_bound))
  print(paste("Lower Bound = ", lower_bound))
  print(paste("Outliers : ", paste(sort(x[x<lower_bound | x > upper_bound]), collapse ="," )))

}

get.outliers(branch_data$Years_X3)
