

library(readxl)
library(ggplot2)



mydata <- read_excel("mydata.xlsx", col_types = c("text", 
                                                  "text", "text", "numeric", "numeric"))

data <- mydata
View(data)
head(data)
plot(data = data,data$conc,data$uptake)

p1<- ggplot(data)+ geom_jitter(data = data,aes(x = Plant , y = conc,color = data$Treatment))
p1
p2 <- ggplot(data)+ geom_jitter(data = data,aes(x = Treatment , y = conc,color = Plant))+
  labs(
    x = "Treatment",
    y = "Consc Values",
    title = " Plants Data with Types",
    fill = " Plant Type"
  )+scale_fill_brewer(palette = "BrBG",direction = 1)
p2 + theme_dark()
p2 + theme_bw()
summary(data)
cor(data)
cor(data$conc,data$uptake, method =  "spearman") #"pearson", "kendall",spearman
cor(data$conc,data$uptake, method =  "pearson")
cor(data$conc,data$uptake, method =  "kendall")
m <- mean(data$conc)
s <- sd(data$conc)
summary(data$conc)
summary(data$uptake)
