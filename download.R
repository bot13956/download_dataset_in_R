#code to download a file from the internet using download.file() and read.csv() functions.
#start by choosing the directory where the file should be downloaded
setwd("C:\\Users\\btayo\\Desktop\\grade_classifier")
library(readr)
#using download.file() function
download.file("https://raw.githubusercontent.com/bot13956/datasets/master/introduction_to_physics_grades.csv", "grades.csv")
df<-read.csv("grades.csv")
head(df)
#using read.csv() function
df<-read.csv("https://raw.githubusercontent.com/bot13956/datasets/master/introduction_to_physics_grades.csv")
head(df)
