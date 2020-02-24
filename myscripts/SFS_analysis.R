setwd("myresults")

list.files()
SFS<-scan("MRC_outfold.sfs") # first position is all the monomorphic sites

sumSFS<-sum(SFS)

pctPoly=100*(1-(SFS[1]/sumSFS)) # percentage of loci that are polymorphic

plotSFS<-SFS[-c(1,length(SFS))]
barplot(plotSFS)

div<-read.table("MRC_allsites.thetas.idx.pestPG")
colnames(div)=c("window","chrname","wincenter","tW","tP","tF","tH","tL","tajD","fulif","fuliD","fayH","zengsE","numSites")

div$tWpersite=div$tW/div$numSites
div$tPpersite=div$tP/div$numSites

pdf("MRC_Diversity_stats.pdf")
par(mfrow=c(2,2))
hist(div$tWpersite,col="goldenrod",xlab="Theta-W",main="")
hist(div$tPpersite,col="purple",xlab="Theta-P",main="")
hist(div$tajD,col="blue",xlab="Tajima's D",main="")
barplot(plotSFS)
dev.off()

summary(div)
