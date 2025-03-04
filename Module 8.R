data(mtcars)
str(mtcars)
summary(mtcars)

library(ggplot2)
library(gridExtra)
library(ggcorrplot)
library(readr)

cor_matrix <- cor(mtcars)
print(cor_matrix)


p1 <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "blue") +
  ggtitle("MPG vs Weight")

p2 <- ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "red") +
  ggtitle("MPG vs Horsepower")

p3 <- ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "green") +
  ggtitle("MPG vs Displacement")

p4 <- ggplot(mtcars, aes(x = qsec, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "purple") +
  ggtitle("MPG vs Quarter-mile time")

grid.arrange(p1, p2, p3, p4, ncol = 2)
