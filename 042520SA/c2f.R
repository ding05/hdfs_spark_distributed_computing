# Simple plot

data = read.csv('c2e.csv', header = FALSE)
ts = ts(data$V4, start = 1763, end = 2020)
plot(ts, xlab = 'Year', ylab = 'Ratio', main = 'Quality Flags')