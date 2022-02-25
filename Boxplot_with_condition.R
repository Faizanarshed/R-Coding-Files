
#read csv file and import the dataset
df <- read.csv("trains vs planes.csv")
# view the dataset which is stored in df veriable
View(df)
# boxplot draw the veriable in the boxplot
boxplot(df$Ticket.Price ~ df$Route,col="red",border = "blue",Main="Comparision Train vs Plan",
        xlab = "Route",ylab = "Ticket Price")
boxplot( df$week ~ df$Mode,xlab = "Mode Of Transport",ylab = "Week")
boxplot( week ~ Mode,data = df)
print(is.data.frame(df))
#print the number of column in the dataframe or dataset
print(ncol(df))
#print the number of rows in the data frame or dataset
print(nrow(df))
# max find the max value in the attribute
# max_fair variable store the value of max
max_fair <- max(df$Ticket.Price)
# print the max_fair varible which store the value of max price of the ticket
print(max_fair)
#call a veriable and store the subset after applying the condition
#Condition: Mumbai-dehli route particularly and mode of transport is train only
retval <- subset(df, df$Route=="mumbai-delhi" & df$Mode=="Train")
# print the values which store in the retval veriable 
#after the condition the data will be stored
print(retval)
# write the data set in a new file 
# after applying the condition the the data store into the veriable and then sore it into the verible
write.csv(retval,"output.csv")
# Store new csv file into new veriable
newdata <- read.csv("output.csv")
print(newdata)
# new veriable created and stored data after applying new conditions
datevise <- subset(df, as.Date(date) > as.Date("06-07-2022") & df$Mode == "Train")
# print the datevise veriable which store the dataset
print(datevise)



