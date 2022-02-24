#import built in R dataset
data("USArrests")
#view the head of the dataset
head(USArrests)
# View the data set 
View(USArrests)
# box plot in r
boxplot(USArrests$Murder,USArrests$UrbanPop)

#coloring box Plot
boxplot(USArrests$Murder,USArrests$UrbanPop,border = "blue",main="US Crime Data",
        xlab="Murder vs UrbanPop",ylab="Number",col = "red")
