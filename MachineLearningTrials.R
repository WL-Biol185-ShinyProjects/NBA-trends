write.table(fullstatsfinalfinal, file="FinalStats.txt")
read.table("FinalStats.txt") #can't open connection for some reason 


write.table(q, file="Heatmapstats.txt")
read.table("Heatmapstats.txt") # can't read in duplicate row names 

write.table(FinalHeatmapStats, file="Heatmap.txt")

heatmap16 <-filter(FinalHeatmapStats, SEASON == 2016)
heatmap16


m<-as.matrix(heatmap16)
m
row.names(m)<-heatmap16$PLAYER
m
n<-as.data.frame(m)
n
n$PLAYER <- NULL
n

write.table(heatmap16, file="Heatmapsixteen.txt")
a<-read.table("Heatmapsixteen.txt")
a

heatmap<-read.table("Heatmap.txt")
m<-as.matrix(heatmap)
m
row.names(m)<-heatmap$PLAYER
m
n<-as.data.frame(m)
n
n$PLAYER <- NULL
n

Heatmap<-data.matrix(n)


write.csv(q, file = "heatmap.txt")



d3heatmap(b[1:1000, 1:20])

url <- "http://datasets.flowingdata.com/ppg2008.csv"
nba_players <- read.csv(url, row.names = 1)
nba_players
d3heatmap(nba_players, scale = "column", colors = "Blues")
