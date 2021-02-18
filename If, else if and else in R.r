print("Testing If syntax")
# If condition in R
X<- -3
if(X<0)
 {
   print("X is a negative number")
 }

print("Testing If and Else syntax")
# If and else condition in R
X<-5
if(X<0)
 {
     print("X is a negative number")
 }else
 {
     print("X is either positive nor zero")
 }

print("Testing if, Else and Else if syntax")
# If,elseif and else condition in R
X<--3
if(X<0)
{
    print("X is a Negative number")
}else if(X==0)
{
    print("X is zero")
}else{
    print("X is positive number")
}

#Checling number is divisible by 2 or 3
X<-6
if(X %% 2==0)
{
    print("Divisibe by 2")
}else if(X %% 3==0)
{
    print("divisible by 3")
}else
{
    print("Not divisible by 2 nor 3")
}