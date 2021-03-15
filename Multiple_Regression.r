library(datasets)
data("mtcars")
head(mtcars)

train_size <- 0.7
n <- nrow(mtcars)
m <- ncol(mtcars) - 1
print(paste(n, 'samples', ',', m, 'features'))
n_train <- train_size * n
n_test <- n - n_train
print(paste(n_train, "Train samples;", n_test, "Test samples"))

set.seed(90)

indices <- sample(1:n, replace = F)
shuffle_data <- mtcars[indices]

train <- shuffle_data[:n_train]
test <- shuffle_data[n_train:]

model <- glm(mpg ~ hp + wt + cyl, data = train)
summary(model)

predicted <- predict(model, test)
predicted

test$mpg
