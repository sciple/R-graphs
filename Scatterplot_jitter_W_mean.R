# custom colors
source("~/Dropbox/Modules/r/r_colors.R")

# points displacement value
jitter.amount = 0.16

# data
a = c(1,23,43,54,56,76,87,12,34,54,65,54,43,32,21)

# X axis value for data
a.x = rep(1,times=length(a))

# scaffolding plot
plot(jitter(a.x,amount = jitter.amount),a,
     xlim=c(0,3),
     ylim=c(0,100),
     col=get.color('greenlight',T),
     pch=19,
     cex=1.4,
     bty='n',
     xaxt = "n",
     las=2,
     main='Scatterplot',
     xlab ='group',
     ylab='variable')

axis(1, at=c(0:10), labels=c('','+/+','+/-','','','','','','','',''))

# plot average value
points(1,mean(a),col='red',pch='-',cex=2.5)


b = c(11,13,13,84,26,71,27,23,32,43,54,43,23,13,33,23,43,54,65)
b.x = rep(2,times=length(b))
points(jitter(b.x,amount = jitter.amount),b,col=get.color('greenlight',T),pch=19,cex=1.4)
points(2,mean(b),col=get.color('red'),pch='-',cex=2.5)
