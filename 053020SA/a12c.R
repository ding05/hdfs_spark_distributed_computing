# Plot the genre distribution.

data = read.csv("a12f.csv", header = FALSE)
library(ggplot2)
Genre = data$V1
Count = data$V2
LogCount = log(data$V2)
ggplot(data, aes(x = "", y = Count, fill = Genre)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme(axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank())
ggplot(data, aes(Genre, Count, fill = Genre)) + 
  geom_bar(stat = "identity", position = "dodge") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank()) +
  labs(y = "Count")