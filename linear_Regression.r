library(datasets)
data("faithful")
str(faithful)
summary(faithful)
head(faithful)

dev.new()
plot(eruptions ~ waiting, data = faithful)
dev.off()

cor(faithful$eruptions, faithful$waiting)
lr_model <- lm(eruptions ~ waiting, data = faithful)

lr_model$coefficients  # beta0, beta1; y = mx + c; y = beta0 + beta1 * x

dev.new()
plot(eruptions ~ waiting, data = faithful)
abline(lr_model, col = 'red', lty = 'dashed')
dev.off()

x1 <- 65
y_pred <- lr_model$coefficients[1] + lr_model$coefficients[2] * x1  # ypred = beta0 + beta1 * x1
y_pred # predicted y for x = 65
