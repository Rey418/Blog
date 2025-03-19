# Install packages
install.packages("ggplot2")
install.packages("lattice")
install.packages("dplyr")

# Load libraries
library(ggplot2)
library(lattice)
library(dplyr)
library(readr)


nba_data <- read_csv("C:/Users/falxs/Desktop/Data/nba_heights.csv")


hist(nba_data$h_in, 
     main = "Distribution of NBA Player Heights", 
     xlab = "Height (inches)", 
     col = "skyblue", 
     border = "black", 
     breaks = 20)


top_last_names <- nba_data %>%
  count(last_name, sort = TRUE) %>%
  top_n(10, n)


ggplot(top_last_names, aes(x = reorder(last_name, n), y = n)) +
  geom_bar(stat = "identity", fill = "blue") +
  coord_flip() +
  labs(title = "Top 10 Most Common Last Names in NBA", 
       x = "Last Name", 
       y = "Count") +
  theme_minimal()


name_height <- nba_data %>%
  group_by(last_name) %>%
  summarise(avg_height = mean(h_in, na.rm = TRUE), count = n())


ggplot(name_height, aes(x = avg_height, y = reorder(last_name, avg_height))) +
  geom_point(color = "red", size = 3) +
  labs(title = "Last Name Frequency vs. Average Height", 
       x = "Average Height (inches)", 
       y = "Last Name") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 8, angle = 0, hjust = 1))



