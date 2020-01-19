library(plot3D)

group<-rep(1:10)
dateStart<-as.Date("2016/10/01")
dates<-seq(dateStart, by="day", length.out = 20)

simulatedData<-matrix(data=rep(runif(length(dates),min=0,max=.3),times=length(group)), nrow=length(dates),ncol=length(group))
colnames(simulatedData)<-rep(paste0("group ",eval(group)))

maxLimit<-max(simulatedData)*1.2
minLimit<-min(simulatedData)*.8

persp3D(z = simulatedData, zlim = c(minLimit, maxLimit), phi = 20,
        lighting = TRUE, lphi = 90,
        clab = c("","height","m"), bty = "f", plot = FALSE, main="title", sub="subtitle",
        xlab="Date", ylab="Group", zlab="z-axix label")
contour3D(z = -60+0.01, colvar = Vx/10, add = TRUE,
          col = "black", plot = TRUE)
