# Factor data structures in R
blood<-c("B","AB","O","A","O","AB")
blood
blood_factor<-factor(blood)
blood_factor
str(blood_factor)
as.factor(blood_factor)
blood<-c("B","AB","O","A")
blood_factor=factor(blood)
blood_factor[1]<blood[2]
tshirt<-c("M","L","S","S","L","M")
tshirt_factor<-factor(tshirt,ordered=TRUE)
tshirt_factor
tshirt_factor[1]<tshirt_factor[2]
tshirt_factor<-factor(tshirt)
tshirt_factor
tshirt_factors<-factor(tshirt,ordered=TRUE, levels=c("S","M","L"))
tshirt_factors

# Array data structure in R
A<-array(c(1:9))
A
A<-array(c(1:9),dim=(3,3,2))
A<-array(c(1:9),dim=c(3,3,2))
A
vector1<-c(6,2,1)
vector2<-c(10,16,22,43,15,25)
result<-array(c(vector1,vector2))
result
result<-array(c(vector1,vector2),dim=c(3,3,2))
result
# to acess particular element in array
result[1,1,1]
result[3,3,1]
q()
