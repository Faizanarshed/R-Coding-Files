data("mtcars")
plot(x=input$wt,y=input$mpg,xlab = "Weight",ylab = "Mileage",xlim = c(3.5,5),ylim = c(15,30),
     main = "Weight vs Mileage")
