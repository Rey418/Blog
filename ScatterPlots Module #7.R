data(mtcars)
library(ggplot2)
library(gridExtra)


p1 <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() + ggtitle("HP vs MPG")
p2 <- ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + ggtitle("Weight vs MPG")
p3 <- ggplot(mtcars, aes(x=disp, y=mpg)) + geom_point() + ggtitle("Displacement vs MPG")
p4 <- ggplot(mtcars, aes(x=drat, y=mpg)) + geom_point() + ggtitle("Rear Axle Ratio vs MPG")


grid.arrange(p1, p2, p3, p4, ncol=2)
