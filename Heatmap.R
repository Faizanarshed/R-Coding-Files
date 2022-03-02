# 1-Heatmap

x <- mtcars
heatmap(mtcars)
x <- as.matrix(mtcars)
heatmap(x,scale = "column")


#2- ggplot
install.packages("gplots")
library(gplots)
heatmap.2(x,scale = "column",col= bluered(100),trace = "none")
?heatmap.2

# 3.Pheat_maps
install.packages("pheatmap")
library(pheatmap)
pheatmap(x  , scale = "column",cutree_rows = 4)
