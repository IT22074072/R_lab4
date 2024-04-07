getwd()
#importing
data<-read.table("DATA 4.txt",header=TRUE,sep="")
data

#data editor view
fix(data)

#rename columns
names(data)<-c("Team", "Attendance", "Salary", "Years")
fix(data)
data


#accessing variables or columns directly without calling whole dataset
attach(data)

