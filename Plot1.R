#Plot1.script by Muddsair Sharif: muddsairsharif@gmail.com using RStudio 64Bit

# Read the Dataset from CSv File
HHPC <- read.csv("HHPC.txt", sep=";")

#View the Dataset for verification
View(HHPC)

# Setting up the format of the PNG file heaight width etc as well as path
png("plot1.png", width = 480, height = 480)

#Plot the Global Active Power i.e. Plot1
hist(Global_active_power, main="Global Active Power", xlab="Global active power (in killowatts)", col="red")

# Switch off the grafic adapter after writing to file
dev.off()
