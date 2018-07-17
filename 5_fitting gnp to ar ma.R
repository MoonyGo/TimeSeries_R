#attach library and its data
library(astsa)

rm(list=ls(all=TRUE)) #clear memory
cat("Chapter 2/n")
plot(gnp)
acf2(gnp)

gnpgr = diff(log(gnp)) #growth rate
plot(gnpgr)
acf2(gnpgr, 24)
#judging from ACF and PACF, we can use either AR(1) or MA(2)

sarima(gnpgr,1,0,0) # AR(1)
#standardized residuals: residuals of diff(log(gnp)) fitted by AR(1)
#ACR of Residuls: every point stays in 95% -> ok
#normal qq plot: residuals follows normal dist
#p values for Ljung-Box statistic: 
## most of the points are over defalut p(=0.05) = not exceptional -> ok
## lower the p value, rarer the case 
## p value from chi-sq function
sarima(gnpgr, 0,0,2) # MA(2)

#Both AR(1) and MA(2) seems to pass tests
#Lastly we can compare AIC and BIC
#AIC BIC of AR(1): -8.284898, -9.263748
#AIC BIC of MA(2): -8.287855, -9.251712

# lower value is better
#AIC is better for MA(2) and BIC is better for AR(1)