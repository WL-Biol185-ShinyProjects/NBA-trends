kgroups<-kmeans(as.matrix(fullStats[1:1000, 4:29]), centers=20)
kgroups
head(kgroups)
groups<-

heatmap(as.matrix(fullStats[1:1000, 4:29]))

fullStats <- read.table("fullStats.txt")
fullStats
d<-fullStats[3:10]
d
d3heatmap(d, scale = "column")
          # , dendrogram = "row", k_row = 3,
          # color = scales::col_quantile("Blues", NULL, 5))



library(d3heatmap)

d3heatmap(nba_players, colors = "Blues", scale = "col",
          dendrogram = "row", k_row = 3)


d<-unique(heatmapStats)
m<-as.matrix(heatmapStats)
m
row.names(m)<-heatmapStats$X1
m
n<-as.data.frame(m)
n
n$X1 <- NULL
b<-data.matrix(n)
b
d3heatmap(b[1:1000, 1:20])

url <- "http://datasets.flowingdata.com/ppg2008.csv"
nba_players <- read.csv(url, row.names = 1)
nba_players
d3heatmap(nba_players, scale = "column", colors = "Blues")
