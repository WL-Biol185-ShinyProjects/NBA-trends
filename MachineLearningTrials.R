write.table(fullstatsfinalfinal, file="FinalStats.txt")
read.table("FinalStats.txt") #can't open connection for some reason 


write.table(q, file="Heatmapstats.txt")
read.table("Heatmapstats.txt") # can't read in duplicate row names 


m<-as.matrix(FinalHeatmapStats)
m
row.names(m)<-FinalHeatmapStats$PLAYER
m
n<-as.data.frame(m)
n
n$PLAYER <- NULL
q<-data.matrix(n)
q

write.csv(q, file = "heatmap.txt")



d3heatmap(b[1:1000, 1:20])

url <- "http://datasets.flowingdata.com/ppg2008.csv"
nba_players <- read.csv(url, row.names = 1)
nba_players
d3heatmap(nba_players, scale = "column", colors = "Blues")
