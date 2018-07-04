# download_dataset_in_R

This tutorial explores two important ways of downloading a dataset from the internet. Most often, we use data from various sources to perform analysis. In most cases, the data can be downloaded from the internet. In this tutorial, we provide easy step-by-step instructions that can be used to download files from the internet. The instructions are applicable for any file type, however we will focus on comma separated values (cvs) files, since most datasets are saved in this format. In this example, we show how to download the file: introduction_to_physics_grades.csv from the following repository: https://github.com/bot13956/datasets

# Method 1: Using the download.file() function in R
Use the function setwd() to choose the directory where the file should be saved:

setwd("C:\\Users\\btayo\\Desktop\\grade_classifier")

Then use the function download.file(url, filename) to download the file. Here, url is a string containing the URL of the file, and filename is the filename of the destination file. 

# Notes on providing the correct URL
If you navigate to the github repository https://github.com/bot13956/datasets and click on the file: introduction_to_physics_grades.csv, it takes you to the following URL: https://github.com/bot13956/datasets/blob/master/introduction_to_physics_grades.csv
If you input this URL into your download.file() function, for example using the command:

download.file("https://github.com/bot13956/datasets/blob/master/introduction_to_physics_grades.csv", "grades.csv"), you get the following messages:

trying URL 'https://github.com/bot13956/datasets/blob/master/introduction_to_physics_grades.csv'

Content type 'text/html; charset=utf-8' length unknown

downloaded 195 KB

The file has been downloaded incorrectly, as the content type is set to text/html. If you navigate to your working directory (that is the "C:/Users/btayo/Desktop/grade_classifier" directory in this example) and click on the downloaded "grades.csv" file in your local directory, you notice that the file has been downloaded in html format. This is definitely not the correct format.  Because we are downloading a csv file, we want the content type to be set to text/plain, not text/html. 

To download the csv file in the text/plain format, navigate to the github repository: https://github.com/bot13956/datasets

Then click on the csv file: introduction_to_physics_grades.csv 

Then click on the Raw button in the top right. This should open the file as a csv file.

Now copy the URL on this page: https://raw.githubusercontent.com/bot13956/datasets/master/introduction_to_physics_grades.csv

This is the URL that you should use as argument in the download.file() function. The correct code is thus:

download.file("https://raw.githubusercontent.com/bot13956/datasets/master/introduction_to_physics_grades.csv", "grades.csv")

Note that once this command is issued, the following messages are produced:

trying URL 'https://raw.githubusercontent.com/bot13956/datasets/master/introduction_to_physics_grades.csv'

Content type 'text/plain; charset=utf-8' length 9562 bytes

downloaded 9562 bytes

This shows that the file has been downloaded in the correct format with content type set to text/plain. 

To view and analyze the data contained in the downloaded "grades.csv" file, you may use the following commands:

library(readr)

df<-read.csv("grades.csv")

head(df)

# Method 2: Using the read.csv() function in R

We can use the read.csv() function to read the data directly into our workspace and assign it to a new dataframe object using the following command:

library(readr)

df<-read.csv("https://raw.githubusercontent.com/bot13956/datasets/master/introduction_to_physics_grades.csv")

head(df)

There are so many different ways of downloading datasets from the internet. I think the functions download.file() and read.csv() provide a very simple and straightforward way to download datasets from the internet. 

The file download.R contains the code that we have used here.

