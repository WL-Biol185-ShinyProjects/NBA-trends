
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
