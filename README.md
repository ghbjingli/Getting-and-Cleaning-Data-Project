#**Getting and Cleaning Data Project**

Jing Li

jl2408@att.com

This Repo contains materials for the submission of the course project for the Johns Hopkins Getting and Cleaning Data course.

##**Project Description**

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##**Project Requirements**

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##**Steps Performaned to Clean up and Tidy the Data**

Make sure this run_analysis.R file is in the working directory under which the data subdirectory is created or already exists

1. Merges the training and the test sets to create one data set

. Download the Dataset.zip file and store it in directory data

. Unzip the downloaded file

. Read the train Data from train data files

. Combine the feature, subject and activity train data

. Read the test Data from test data files

. Combine the feature, subject and activity test data

. Merge the train and test data

. Read features from features file

. Add names to the data set

2. Extracts only the measurements on the mean and standard deviation for each measurement

. Exam the features.txt for the patterns of mean and standard deviation

. The patterns include mean(), std(), meanFreq()

. Extracts the selected data

3. Uses descriptive activity names to name the activities in the data set

. Read activity labels from activity labels file

. Factorize the activity with labels

. Factorize subject

4. Appropriately labels the data set with descriptive variable names

. Change mean to Mean and std to Std and remove - and ()

. Replace begining t with time

. Replace begining f with frequency

. Replace Acc with Accelerometer

. Replace Gyro with Gyroscope

. Replace Mag with Magnitude

. Replace BodyBody with Body

. Review and verify the created data set

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

. Load librayr reshape2

. Melt selectedData by activity and subject

. Generate the tidy set

. Create the file tidydata.txt containing the tidy data set

##**Project Deliverables**

1. README.md
	This file
2. CodeBook.md
	A codebook which describes the variables, the data, and any transformations performed to clean up the data
3. run_analysis.R
	A R script that performs all the clean up and transformation to generate the final product tidydata.txt file. Please also refer to the comments in this file for detailed step by step procedure to clean up and tidy the original data
4. tidydata.txt
	The file containing the final tidy data set

