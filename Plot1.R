#Created by Muddsair Sharif: email id: muddsairsharif@gmail.com
#Instructions
#---------------------------------------------------------------------------------------------
#To work on the plot,you need to download the "householdConsuptionData.rdata" from the github
#https://github.com/muddsairsharif/ExData_Plotting1
#The "householdConsuptionData.rdata" has subseted only the data from 1/2/2007 to 2/2/2007 from the raw dataset
#If you want to check how the subsetting was done, please check the "loaddataSet.R" file

#Please make sure "householdConsuptionData.rdata" is in your working directory
load(file="householdConsuptionData.rdata")
png(filename="plot1.png",width=480,height=480)
hist(data$Global_active_power,xlab="Global Active Power (kilowatts)",
     main="Global Active Power",col="red")
dev.off()
