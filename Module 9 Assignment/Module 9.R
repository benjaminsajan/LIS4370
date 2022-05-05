library(ggplot2)

infants <- read.csv("S:\\Users\\Benjamin\\Downloads\\Leinhardt.csv")
head(infants)

plot(infant ~ income, data = infants)

counts <- table(infants$region)
barplot(counts, main = "Regions and their Infant Mortality")

RegionRatesBP <- ggplot(infants, aes(region, infant))+
  geom_bar(stat = "identity")

piechart <- ggplot(infants, aes(x = "", y = infant, fill = region)) +
  theme(axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.text.x = element_blank())+
  geom_col()+
  coord_polar(theta = "y") 
  
piechart