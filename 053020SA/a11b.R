# Get the correlation matrix.

data = read.csv("msd-jmir-methods-of-moments-all-v1.0.csv", header = FALSE)
# The file is too big to upload.
data$V11 = NULL
summary(data)
apply(data, 2, sd)
apply(data, 2, var)
cor(data)