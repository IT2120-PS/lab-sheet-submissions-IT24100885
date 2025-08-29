setwd("C:\\Users\\it24100885\\Desktop\\IT24100885")

Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE)

fix(Delivery_Times)

attach(Delivery_Times)

names(Delivery_Times)<-c("Delivery Times")

attach(Delivery_Times)

hist(X1,main="Histogram for Delivery Times")


histogram<- hist(X1,main="Histogram for Delivery Times" , xlab = "Delivery Time",breaks = seq(20,70,length = 10),right = FALSE)

breaks <- round(histogram$breaks)

freq <- histogram$counts

mids <- histogram$mids

classes <- c()

for (i in 1:length(breaks)-1) {
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],")")
}

cbind(Classes = classes,frequency = freq)


lines(mids,freq)

plot(mids,freq,type = 'l',main = "Frequence Polygon for Delivery Time ",xlab = "Delivery Time",ylab="Frequency",ylim =  c(0,max(freq)))


cum.freq <- cumsum(freq)

new <- c()

for (i in 1:length(breaks)){
  if(i == 1){
    new[i]= 0
  }else{
    new[i] = cum.freq[i - 1]
  }
}

plot(breaks , new, type = 'l',main = "Cumalative Frequency Polygon for Delivery Time",xlab = "Delivery Time",ylab = "Cumulative Frequence",ylim = c(0,max(cum.freq)))

cbind(Upper = breaks,cum.freq = new)

