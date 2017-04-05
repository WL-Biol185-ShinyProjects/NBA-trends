kgroups<-kmeans(as.matrix(fullStats[1:1000, 4:29]), centers=20)
kgroups
head(kgroups)
groups<-

heatmap(as.matrix(fullStats[1:1000, 4:29]))

fullStats <- read.table("fullStats.txt")
fullStats

fullStats <- read.table("fullStats.txt")
fullStats
d<-fullStats[3:10]
d
d3heatmap(d, scale = "column")
          # , dendrogram = "row", k_row = 3,
          # color = scales::col_quantile("Blues", NULL, 5))


library(d3heatmap)
d3heatmap(mtcars, scale = "column", colors = "Blues")
View(mtcars)
