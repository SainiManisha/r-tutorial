# Vectors datastructures in R
a<-c("hearts","spades","diamonds","diamonds","spades")
a
c("heart","spades","diamonds","diamonds","spades")
draw_suits<-c("heart","spades","diamonds","diamonds","spades")
draw_suits
is.vector(draw_suits)
remain<-c(11,12,11,13)
remain
suits<-c("spades", "hearts","diamonds","clubs")
names(remain)<-suits
remain
remain<-c(spades=11,hearts=12,diamonds=11,clubs=13)
remain
str(remain)
remain<-c("spades"=11,"hearts"=12,"diamonds"=11,"clubs"=13)
remain
my_apples<-5
is.vector(my_apples)
my_oranges<-"six"
is.vector(my_oranges)
my_spples<-c(5)
my_spples
is.vector(my_apples, my_apples)
class(my_apples)
class(my_oranges)
length(my_apples)
length(my_oranges)
length(draw_suits)
length(remain)
drawn_ranks<-c(7,4, "A",10,"k",3,2,"Q")
drwan_ranks
drawn_ranks
class(drawn_ranks)
q()

# Matrix data structures in R
matrix(1:6,nrow=2)
matrix(1:6, ncol=3)
matrix(1:6,nrow=2,byrow=TRUE)
matrix(1:4,nrow=2,ncol=3)
cbind(1:3,1:3)
rbind(1:3,1:3)
m<-matrix(1:6,byrow=TRUE,nrow=2)
rbind(m,7:9)
m1<-matrix(1:6,byrow=TRUE,nrow=2)
cbind(m1,c(10,11))
m<-matrix(1:6,byrow=TRUE,nrow=2)
m
rownames(m)<-c("row1","row2")
m
colnames(m)<-c("col1","col2","col3")
m
num<-matrix(1:8,ncol=2)
num
char<-matrix(LETTERS[1:6],nrow=4,ncol=3)
char
cbind(num,char)
c1<-cbind(num,char)
c1
class(c1)

# lists data structure in R
list("Rsome times","190",5)
song<-list("Rsome times",190,5)
song
is.list(song)
song<-list(title="Rsomes times", duration=190, track=5)
str(song)
similar_song<-list("R", duration=230)
similar_songs
similar_song
song<-list(titles="Rsomes times", duration=190, tracks=5, similiar=similar_songs)
song<-list(titles="Rsomes times", duration=190, tracks=5, similiar=similar_song)
song
str(song)
class(list)
class(song)

# data frame data structure in R
name<-c("Anne","Dell","Frank","Julia","cath")
age<-c(28,30,21,39,35)
child<-c(FALSE,TRUE,TRUE,FALSE,TRUE)
df<-data.frame(name,age,child)
df
names(df)<-c("Name","Age","child")
df
str(df)
q()
