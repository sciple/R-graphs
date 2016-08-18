set.seed(10)
d = rnorm(1000)*10


# quartzFonts(roboto = c("Roboto Light","Roboto Medium","Roboto Bold","Roboto Italic"))
quartzFonts(roboto = c("Maven Pro Regular","Maven Pro Medium","Maven Pro Black","Maven Pro Bold"))

par(lwd=0.15,family="roboto",cex=1.12)

parameters = hist(d,plot = F)
max.y = max(parameters$counts)
min.x = min(parameters$breaks)-10
max.x = max(parameters$breaks)+10

hist(d,yaxs='i',xaxs='i',yaxt='n',xaxt='n',
     col="#7a636b",xlim=c(min.x,max.x),family="roboto",
     family='sans',breaks = 10,bty='c',
     main="My histogram",xlab="",lwd=24,border=F,freq = T)

#X axis
axis(1, seq(min.x,max.x,10),labels = T,lwd = 1.5,font.axis = 1, tck=-0.035)

#Y axis
axis(2,seq(0,max.y+20,40),col="#ffffff00",las=2,tck=0.03,col.ticks="#444444",mgp=c(0,0.5,-0.2),font.axis = 1)




