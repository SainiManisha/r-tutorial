# IRIS DATASET
library(datasets)
data("iris")
summary(iris)
str(iris)

plot(iris)
dev.off()


x <- iris$Sepal.Length
y <- iris$Petal.Length
plot(x, y)
dev.off()

hist(iris$Sepal.Length)
dev.off()

ss <- subset(iris, Species == 'setosa')
head(ss)
boxplot(iris)
dev.off()

par(
 mar = c(5, 5, 3, 3) # bottom, left, top, right margins (in order)
)
boxplot(iris)
dev.off()



# load MASS package 
library(MASS)

# list all datasets
data()

# load trees dataset
data(trees)

hist(trees$Height)                 # plot
dev.off()  


b<-barplot(table(trees$Height), 
             main="Race", 
             ylim = c(0,200), 
             col=terrain.colors(5))
dev.off()  


install.packages("ggplot2")
library(ggplot2)
data("midwest", package = "ggplot2")

# Scatterplot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest")

plot(gg)
dev.off()

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
ggplot(iris, aes(x=Petal.Length, y=Petal.Width)) + geom_point()
dev.off()

ggplot(iris, aes(x=Petal.Length)) + geom_histogram()
dev.off()

ggplot(iris, aes(x=Petal.Length, fill=Species)) + 
  geom_histogram(binwidth = 0.1)
dev.off()
