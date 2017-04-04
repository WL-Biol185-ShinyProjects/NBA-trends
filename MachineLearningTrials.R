kgroups<-kmeans(as.matrix(fullStats[1:1000, 4:29]), centers=20)
kgroups
head(kgroups)
groups<-

heatmap(as.matrix(fullStats[1:1000, 4:29]))

fullStats <- read.table("fullStats.txt")
fullStats
