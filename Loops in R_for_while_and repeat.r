# For loop
# traversing all the elements of vector(Numeric)
for(i in 1:10)
{
    print(i)
}
# traversing all the elements of vector(Character)
vector<-c("My","Second", "Programming","code")
for (i in vector)
{
    print(i)
}
# traversing all the elements of vector(Numeric)
X<-c(10,20,30,40,50,60,70)
for (i in X)
{
    print(i)
}

# traversing all the elements of list
X<-list("A", "B", 100, "Q", 5.5)
for (i in X)
{
    print(i)
}

# traversing all the elements of vector(Numeric) and calculating the sum of all the elements present in the list
X=c(10,20,30,40,50)
sum=0
for(i in X)
{
    sum=sum+i
}
print(sum)

# While loop
# Find sum of Even number from 1 to 10
count<-0
i<-1
while(i<=10)
{
    if(i %%2==0)
    {
        count=count+1
    }
    i=i+1
}
print(count)

#Repeat loop
# Find sum of all number from 1 to 10
sum<-0
i<-1
repeat
{
    sum=sum+i
    i=i+1
    if(i>10)
    {
    break
    }
}
print(sum)