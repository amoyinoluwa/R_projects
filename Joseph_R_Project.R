Grades<-c("C","A","C","D","F","F","A","F","A","F","B","C")
Grades.Freq<-table(Grades) #this creates a table of the values.
Grades.Freq
cbind(Grades.Freq) #We apply the cbind function to print the result in column format
vtable<-Grades.Freq/length(Grades) #this shows the percentage
pie(vtable)

Numbofpets<-c(8,2,3,1,5,6,7,5) #this is a vector
length(Numbofpets) #prints the number of elements in the vector
sort(Numbofpets) #sorts the data in ascending order
Numbofpets.Freq<-table(Numbofpets) #creates table for Numbofpets
Numbofpets.Freq 
cbind(Numbofpets.Freq) #prints in column format
#to create a table with values, use the "nameofthedataset.Freq<-tables(nameofthedataset)"

install.packages("formattable")
library(formattable)
PercentT<-percent(vtable)
PercentT
percent(cbind(vtable))
barplot(vtable)
#anything before '<-' is just a name
install.packages("MASS")
library(MASS) #loads the library called 'MASS'
data() #this will show all data in R in a different tab
head(Insurance) #shows only the first six insurance data
head(Insurance, n=10) #shows  the first 10 insurance data
head(painters) #shows only the first six painters' data
tail(painters) #shows only the last six painters' data
summary(painters) #gives a summary of the data, including the five number summary
str(painters) #gives description of the data set (e.g integers, factors)
ls(painters) #displays the variables in the data set
SchoolVal<-painters$School #this will show ONLY the school column in the painters data set
SchoolVal #calls the data set SchoolVal
SchoolVal.Freq<-table(SchoolVal)
SchoolVal.Freq #shows the table of values for 'school'
vtablesc<-SchoolVal.Freq/length(SchoolVal) #verticle relative frequencies
vtablesc
percent(cbind(vtable)) #prints percentage of school values in column format
sum(SchoolVal.Freq) #shows the total frequency
help("painters") #this shows information about the painters' data. '?painters' can also be used
ChessData1<-read.csv(file.choose(), header = TRUE) #this lets your select and import a CSV file from your computer
ChessData1 #calls the data you imported
ls(ChessData1)
Chess.Fed<-table(ChessData1$Federation) #gets table from 'Federation column in your dataset.
Chess.Fed #calls the new table
percent(Chess.Fed)
data()
head(PlantGrowth) #shows first six data
?PlantGrowth
group<-PlantGrowth$weight
group
library("formattable")
groupsum<-sum(group)
groupsum
average.group<-group/groupsum
average.group
percent.group<-percent(average.group)
percent.group
sum(percent.group)
library("formatabble") #for the percent function

library(readr)
transfers <- read_csv("Downloads/transfers.csv")
View(transfers)
Grades<-c(C,D,A,F,C,B,A,B,D,A,C,B,A,D,D,B,A,A)
Grades.Freq
vtable<-Grades.Freq/length(Grades)
percent(vtable)
pie(percent(vtable))
install.packages("RColorBrewer") #this installs the color function
library(RColorBrewer)
mycolor<-brewer.pal(5, "Set2")
mycolor
#this line customizes the pie chart with labels, colors and a title
pie(percent(vtable), labels = c("Gr-A", "Gr-B", "Gr-C", "Gr-D","Gr-E"), border="white", col = mycolor, main ="My first pie chart")

install.packages("plotrix")
library(plotrix)
pie3D(percent(vtable), labels = c("Gr-A", "Gr-B", "Gr-C", "Gr-D","Gr-E"), border="white", col = mycolor, explode=0.4, main ="My first pie chart")

install.packages("dplyr")
install.packages("Lock5Data")
install.packages("ggplot2", dep = TRUE)

library(dplyr)
library(Lock5Data)
library(ggplot2) 
data()
data(package = "Lock5Data")
head(ChickWeight)
ChickWeight$Time
time<-table(ChickWeight$Time)
time
Vtable<-time/sum(time) 
install.packages("formattable")
library(formattable)
PctData<-percent(Vtable)
PctData
library(ggplot2) 
pieData <- ggplot(PctData, aes(x="", y=Freq, fill=Var1)) + geom_bar(stat="identity", width=1)
rlang::last_error()
