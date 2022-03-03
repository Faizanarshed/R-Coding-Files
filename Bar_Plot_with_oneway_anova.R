#install.packages("multcompView")
#install.packages("dplyr")
library(ggplot2)
library(ggthemes)
library(multcompView)
library(dplyr)
library(stats)

data("chickwts")
View(chickwts)
tibble(chickwts)
mean_data <- group_by(chickwts,feed) %>%
  summarise(weight_mean=mean(weight), sd = sd(weight)) %>%
  arrange(desc(weight_mean))

tibble(mean_data)

anova <- aov(weight ~ feed , data = chickwts)
summary(anova)

tukey <- TukeyHSD(anova)
tukey

group_latters <- multcompLetters4(anova,tukey)
group_latters

group_latters <- as.data.frame.list(group_latters$feed)

mean_data$group_latters <-group_latters$Letters
tibble(mean_data)





