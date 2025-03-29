library(readr)
hotdogs <- read_csv("C:/Users/falxs/Desktop/Data/hot-dog-contest-winners.csv")
head(hotdogs)
library(ggplot2)
ggplot(hotdogs, aes(x = Year, y = `Dogs eaten`, group = 1)) +
  geom_line(color = "darkred", size = 1) +
  geom_point(color = "grey", size = 3) +
  labs(title = "Hot Dog Eating Contest Trend (1980-2010)",
       x = "Year",
       y = "Hot Dogs Eaten") +
  theme_minimal()
