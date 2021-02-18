x <- read.csv("data.csv")
x
x$Name
x$Phone
x$Email.Address
class(x$Name)
class(x$Phone)
typeof(x$Email.Address)

a<-c("SOE","SOM","SOL","SOFD")
b<-c(1,2,5,6)
df<-data.frame(a,b)
df
write.csv(df,"data2.csv")
read.csv("data2.csv")
