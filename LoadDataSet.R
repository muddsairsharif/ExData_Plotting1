#Created by Muddsair Sharif: email id: muddsairsharif@gmail.com
#Instructions
#---------------------------------------------------------------------------------------------
setwd("C:/DEP/HHProject Exploatory")
#first you need to set the directory where the data file is located
con=file("HHPC.txt","r")

#to get the starting line and ending line index for 1/2/2007 
start=0
end=0
index=0
line=readLines(con,1)
while(start==0) {
  line=readLines(con,1)
  index=index+1
  date=substr(line,0,8)
  
  if(date=="1/2/2007") {
    start=index
  }
}

while(end==0) {
  line=readLines(con,1)
  index=index+1
  date=substr(line,0,8)
  if(date=="3/2/2007") {
    end=index-1
  }
}
close(con)

nrows=end-start+1
data.names=read.table("HHPC.txt",header=T,sep=";",na.string="?",nrows=2,stringsAsFactors=F)
data=read.table("HHPC.txt",sep=";",na.string="?",skip=start,nrows=nrows,stringsAsFactors=F)
names(data)=names(data.names)
data$Wdays=strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")
save(data,file="householdConsuptionData.rdata")
