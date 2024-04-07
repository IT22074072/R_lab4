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

#boxplot
boxplot(Attendance,main="Boxplot for attendance",outline = TRUE, xlab="Attendance", horizontal = TRUE, outpch=8)
boxplot(Salary, main="Boxplot for salary", outline=TRUE,xlab="Salary", horizontal = TRUE, outpch=8)
boxplot(Years, main="Boxplot for years", outline = TRUE, xlab="Years", horizontal = TRUE, outpch=8)


#histogram
hist(Attendance, main = "histogram for attendance", ylab="Frequency")
abline(h=0)
hist(Salary, main = "histogram for Salary", ylab="Frequency")
abline(h=0)
hist(Years, main = "histogram for Years", ylab="Frequency")
abline(h=0)

#stem-leaf
stem(Attendance)
stem(Salary)
stem(Years)


#mean
mean(Attendance)
mean(Salary)
mean(Years)

#median
median(Attendance)
median(Salary)
median(Years)

#standard deviation
sd(Attendance)
sd(Salary)
sd(Years)

#first and third quantile
summary(Attendance)

