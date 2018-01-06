# for importing data as matrix
mydata=read.csv("1950.csv",sep=",")
md1=data.matrix(mydata)
md1

#structure of data
str(md1)

write.table(md1, file="original.txt", sep=",",col.names = TRUE, row.names = FALSE)


#K-Means clustering
clus1<-kmeans(md1,5)
clus1

#fit value
fit<-fitted(clus1,method=c("centers","classes"))
fit

#exporting the fit value
#write.table(fit,"C:\Users\Elcot\Documents\R-Pro\fit1.csv",sep",")
write.csv(fit,file="file.csv")
#write.table(fit, file="file.txt", sep=",",col.names = TRUE, row.names = FALSE)

#import
fit1=read.csv("file.csv",sep=",")
md2=data.matrix(fit1)
md2

#export into txt file
write.table(md2,file="md2.txt", sep=",",col.names = TRUE, row.names = FALSE)

#sorting based on column "x"
x<-md2[order(md2[,1]),]
x


#for plotting
plot(md1, main="Example",xlab="Latitude ", ylab="Longitude ", pch=10) 


#calling java program
Britt <- function(){
  brit <- .jnew("Britt")
  out <- .jcall(brit,"Britto")
  return(out)
  }
Britt



comcatdata<-comcatpathpocsv(minmagnitude=5)



