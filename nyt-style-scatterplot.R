
myScatterPlot <- function(x.values,
                          y.values,
                          main.label="myScatterplot",
                          x.label='X values',
                          y.label='Y values',
                          rangeX=c(min(x.values),max(x.values)),
                          rangeY=c(min(y.values),max(y.values)),
                          stepValue=1) {
  
  # set font
  quartzFonts(maven = c("Maven Pro Regular","Maven Pro Medium","Maven Pro Black","Maven Pro Bold"))
  par(family="maven",cex=1.12)
  
  min.x = min(x.values)
  max.x = max(x.values)
  min.y = min(y.values)
  max.y = max(y.values)
  
  cat('suggested X range: ',min.x,' < X < ',max.x,'\n')
  cat('suggested Y range: ',min.y,' < Y < ',max.y)
  
  # plotting
  plot(x.values,y.values,bty='n',xaxt='n',yaxt='n',xlab=x.label,ylab=y.label,type='n',
       xlim=rangeX,
       ylim=rangeY,
       main=main.label)
  
  grid(lty=3,col = '#bbbbbb99')
  points(x.values,y.values,col="#aaaaaa99",pch=19)
  
  # axes definition
  axis(1, seq(rangeX[1],rangeX[2],stepValue),labels = T,col="#ffffff",font.axis = 1, tck=F)
  axis(2, seq(rangeY[1],rangeY[2],stepValue),labels = T,col="#ffffff",font.axis = 1, tck=F,las=2)
}

x = runif(60)
y = runif(60)


myScatterPlot(x,y,main.label = "connectivity",rangeX = c(0,1),rangeY = c(0,1),x.label = "time",y.label = "power")

x = rnorm(n = 20,mean = 0.6,sd = 0.1)
y = runif(20)
points(x,y,col=get.color("Red",F),pch=19)
