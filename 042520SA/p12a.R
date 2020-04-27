# Simple plot

data = read.csv('p12b.csv')
ts = ts(data, start = 1763, end = 2020)
plot(ts, xlab = 'Year', ylab = 'Size (byte)', main = 'Files in daily')