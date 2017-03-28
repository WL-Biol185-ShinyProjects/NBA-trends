kgroups<-kmeans(as.matrix(fullStats[1:1000, 4:29]), centers=20)
kgroups
heatmap(as.matrix(fullStats[1:1000, 4:29]))