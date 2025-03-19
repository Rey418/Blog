library(plotly)
library(ggplot2)

plot(mtcars$hp, mtcars$mpg, col=mtcars$cyl, pch=19, cex=mtcars$wt/2,
     xlab="Horsepower (hp)", ylab="Miles Per Gallon (mpg)", 
     main="Scatter Plot: MPG vs HP")
legend("topright", legend=unique(mtcars$cyl), col=unique(mtcars$cyl), pch=19, title="Cylinders")


ggplot(mtcars, aes(x=hp, y=mpg, size=wt, color=factor(cyl))) +
  geom_point(alpha=0.7) +
  labs(title="Bubble Chart: MPG vs HP",
       x="Horsepower (hp)", y="Miles Per Gallon (mpg)", 
       size="Weight (wt)", color="Cylinders") +
  theme_minimal()


plot_ly(mtcars, x = ~hp, y = ~mpg, text = ~rownames(mtcars),
        type = 'scatter', mode = 'markers',
        marker = list(size = ~wt * 5, color = ~cyl, colorscale = 'Viridis')) %>%
  layout(title = "Plotly Interactive Scatter Plot: MPG vs HP",
         xaxis = list(title = "Horsepower (hp)"),
         yaxis = list(title = "Miles Per Gallon (mpg)"))
