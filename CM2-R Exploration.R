number <- 5+2
number
times <- c(60,51,54,21,12,5)
times/60
mean(times)
sqrt(times)
range(times)
times<30
times==20
times!=20
times>20 & times<50
times>20 | times<50
which(times<30) #4th, 5th and 6th entries are true
sum(times<30)
all(times<30)
#subsetting:
times[3]
times[-3] #returns everything minus that third entry
times[c(2,4)]
times[1:5]
times[times<30]
times[times>50] <- 50
times[7] <- NA
mean(times, na.rm=TRUE)
mean(times,0,TRUE)
mean(na.rm=TRUE,x=times)
?mean
mtcars
str(mtcars)
names(mtcars)
mtcars$mpg




