#get the right colors
source('/Users/lex/Dropbox/Modules/r/r_colors.R')

plot.base <- function(dataX.IN,dataY.IN,serrX.IN,serrY.IN,top.color,bottom.color,chance.level,bar.size){
  plot(dataX.IN,ylim=c(-100,100),type='n',bty='l',ylab="% time",xlab="minute")
  for (i in seq(length(dataX.IN))) {
    # top error bars
    segments(i,dataX.IN[i],i,dataX.IN[i]+serrX.IN[i],col="#cccccc")
    # bottom error bars
    segments(i,-dataY.IN[i],i,-dataY.IN[i]-serrY.IN[i],col="#cccccc")
    # top base bars
    rect(xleft = i-bar.size,xright = i+bar.size,ybottom = 1,ytop = dataX.IN[i],col = '#dddddd',border = NA)
    # bottom base bars
    rect(xleft = i-bar.size,xright = i+bar.size,ybottom = 1,ytop = -dataY.IN[i],col = '#dddddd',border = NA)
    # top bars above thresold
    if (dataX.IN[i]>chance.level) {
      rect(xleft = i-bar.size,xright = i+bar.size,ybottom = chance.level,ytop = dataX.IN[i],col = top.color,border = NA)
    }
    # bottom bars above thresold
    if (-dataY.IN[i]< -chance.level) {
      rect(xleft = i-bar.size,xright = i+bar.size,ybottom = -chance.level,ytop = -dataY.IN[i],col = bottom.color,border = NA)
    }
  }
  # x-axis on top of bars
  abline(h=0,col="#888888")
}

serr.x = runif(20)*15
serr.y = runif(20)*15
x = runif(20)*90
x = sin(seq(0,1.5,0.1))*100
x = cos(seq(0,1.5,0.1))*100
y = 100-x

x = rep(50,20)

plot.base(x, y, serr.x, serr.y, top.color= colors$hexcol[3], bottom.color =colors$hexcol[1], chance.level = 50,bar.size = 0.3)
