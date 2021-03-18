library(datasets)
data("iris")
head(iris)
summary(iris)

TEST_SIZE <- 0.2
SEED <- 10

m <- length(iris) - 1
n <- nrow(iris)

n_test <- TEST_SIZE * n
n_train <- n-n_test

set.seed(SEED)
test_indices <- sample(1:n, n_test)

iris_test <- iris[test_indices, ]
iris_train <- iris[-test_indices, ]
head(iris_train)

install.packages("partykit")
library(partykit)
install.packages("rpart")
library(rpart)
install.packages("rpart.plot")
library(rpart.plot)

# rpart and ctree are two packages for decison tree.

output.tree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris_train)
fit <- rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris_train)

dev.new()
plot(output.tree)
dev.off()

dev.new()
rpart.plot(fit)
dev.off()

# predicted <- predict(out.tree, iris_test, type = 'class')
predicted <- predict(fit, iris_test, type = 'class')

cf <- table(predicted, iris_test$Species)
print('Confusion Matrix')
cf

print("Accuracy")
true_predicts <- predicted == iris_test$Species
which_tp <- which(true_predicts)
acc <- (length(which_tp) / n_test) * 100
print(paste(acc, '%'))


# Random Forest
library(randomForest)
set.seed(10)
rfClf <- randomForest(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris_train, ntree = 100)
plot(rfClf)

predicted <- predict(rfClf, iris_test, type = 'class')
cf <- table(predicted, iris_test$Species)
print('Confusion Matrix')
cf


