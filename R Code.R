### Marton Barta

### Exercise 1

## For this exercise, I got a data from Kaggle. The dataset contains information on 1460 houses (has 80 explanatory variables and 1 response variable - price of the house)
# my hypothesis was that the price of the house is correlated (positively) with the 'year-built' - this is what I intend to show on the graph
library(dplyr)
library(ggplot2)
house <- read.csv("~/Desktop/Biocomp-Exercise10/train.csv")

## retrieving Year_Built and SalesPrice
correlationdata <- house[,c(20,81)]
M <- cor(correlationdata) %>% round(3)
M


ggplot(correlationdata, aes(YearBuilt, SalePrice)) + geom_point() + geom_smooth(method = "lm") + 
  xlab("Year_Built") + ylab("Sales Price")
## you can see the positive trend




### Exercise 2

exercise2 <-  read.table("~/Desktop/Biocomp-Exercise10/data.txt",sep = ",", header=T)


#Bar plot with the means of the 4 populations
ggplot(exercise2) + geom_bar(aes(region,observations) ,position = "dodge", stat = "summary", fun = "mean") +  xlab("Region") + ylab("Observation")

# to check
tapply(exercise2$observations, exercise2$region, mean)


#Scatterplot

ggplot(exercise2, aes(x = region, y = observations)) + geom_jitter(alpha =.1) +  xlab("Region") + ylab("Observation")


# Based on the plots that were asked to be displayed, the stories do not match and they tell different stories.
# The bar plot indicates that the means of the regions are almost identical, but it is misleading. The spread of the data is well-represented
# on the scatter plot, where the plot shows how different the regions are from one another.
# The scatterplot graph shows that while the east and the west regions are similarly spread out, they differ from the north and south regions because they are more 
# concentrated.
