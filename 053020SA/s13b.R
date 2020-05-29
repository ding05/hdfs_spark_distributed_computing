# Plot the distrbutions of song popularity and user activity.

data = read.csv("s13e.csv", header = TRUE)
plot(data$sum.CHOICE, xlab = "Song", ylab = "Number of choices")
data = read.csv("s13f.csv", header = TRUE)
data = data[order(-data$sum.CHOICE),] 
plot(data, xlab = "User", ylab = "Number of choices")