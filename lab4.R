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

#quantile value
quantile(Attendance)
#first quantile
quantile(Attendance)[2]
#third quantile
quantile(Attendance)[4]

#IQR
IQR(Attendance)
IQR(Salary)
IQR(Years)

#function that accept argument years and give the mode
get.modes<- function(y){
  counts<-table(y)
  names(counts)[counts== max(counts)]
  
}


get.modes(Years)

#Outliers
get.outliers<-function(y){
  q1<-quantile(y)[2]
  q3<-quantile(y)[4]
  iqr<-IQR(y)
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  print(paste("Upper Bound", ub))
  print(paste("Lower Bound", lb))
  print(paste("Outliers", paste(sort(y[y < lb | y > ub]), collapse = ",")))
  
}

get.outliers(Years)
get.outliers(Attendance)
get.outliers(Salary)

