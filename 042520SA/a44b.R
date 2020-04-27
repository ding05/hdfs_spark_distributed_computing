# Plot time series for one year for example.

library(readxl)

tmax = read_excel("NZ000093012 TMAX.xlsx")
tmax = tmax[order(tmax$DATE),]
tmin = read_excel("NZ000093012 TMIN.xlsx")
tmin = tmin[order(tmin$DATE),]
tavg = read_excel("NZ000093012 TAVG.xlsx")

plot(c(19600000, 20210000), c(0, 300), xlab = "Date", ylab = "Value", main = "NZ000093012")
points(tmax$DATE, tmax$VALUE, col = "red", pch = 16)
points(tmin$DATE, tmin$VALUE, col = "blue", pch = 16)
points(tavg$DATE, tavg$VALUE, col = "black", pch = 16)
legend(x = "bottomright", legend = c("MAX", "MIN", "AVG"), col = c("red", "blue", "black"), pch = 16)