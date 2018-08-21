library(ggplot2)
library(ggthemes)
setwd("/GitHub/HRdata")
data <- read.csv("/GitHub/HRdata/HRdata.csv")
data$HR.G <- data$TotalHRs/data$GP
df<-data.frame(Year=(data$Year),
                  HRperGame=(data$HR.G))
p<-ggplot(df, aes(x=Year, y=HRperGame)) + 
  geom_bar(stat="identity")+
  geom_smooth(method=lm, fill="red")+ ylab("HR/Game")+
  theme_hc()+ggtitle("Homeruns/Game by Year Since 1962")
