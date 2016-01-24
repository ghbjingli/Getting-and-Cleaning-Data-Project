# Make sure this run_analysis.R file is in the working directory under which the data subdirectory is create or already exists
# 1. Merges the training and the test sets to create one data set
# Download the Dataset.zip file and store it in directory data
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip the downloaded file
unzip(zipfile="./data/Dataset.zip",exdir="./data")

# Check the files for the project
filePath <- file.path("./data" , "UCI HAR Dataset")
files <- list.files(filePath, recursive=TRUE)
files

# Read the train Data from train data files
activityTrainData <- read.table(file.path(filePath, "train", "Y_train.txt"))
subjectTrainData <- read.table(file.path(filePath, "train", "subject_train.txt"))
featureTrainData <- read.table(file.path(filePath, "train", "X_train.txt"))

# Combine the feature, subject and activity train data
trainData <- cbind(cbind(featureTrainData,subjectTrainData), activityTrainData)

# Read the test Data from test data files
activityTestData  <- read.table(file.path(filePath, "test" , "Y_test.txt" ))
subjectTestData  <- read.table(file.path(filePath, "test" , "subject_test.txt"))
featureTestData  <- read.table(file.path(filePath, "test" , "X_test.txt" ))

# Combine the feature, subject and activity test data
testData <- cbind(cbind(featureTestData,subjectTestData), activityTestData)

# Merge the train and test data
data <- rbind(trainData, testData)

# Read features from features file
features <- read.table(file.path(filePath, "features.txt"))

# Add names to the data set
names(data)<- c(as.character(features$V2), "subject", "activity")

# 2. Extracts only the measurements on the mean and standard deviation for each measurement
# Exam the features.txt for the patterns of mean and standard deviation
# The patterns include mean(), std(), meanFreq()
# Extracts the selected data
selectedData <- data[, grepl(".*mean.*|.*std.*|subject|activity", names(data))]

# 3. Uses descriptive activity names to name the activities in the data set
# Read activity labels from activity labels file
activityLabels <- read.table(file.path(filePath, "activity_labels.txt"))
# Factorize the activity with labels
selectedData$activity <- factor(selectedData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
# Factorize subject
selectedData$subject <- as.factor(selectedData$subject)

# 4. Appropriately labels the data set with descriptive variable names
# Change mean to Mean and std to Std and remove - and ()
# Replace begining t with time
# Replace begining f with frequency
# Replace Acc with Accelerometer
# Replace Gyro with Gyroscope
# Replace Mag with Magnitude
# Replace BodyBody with Body

names(selectedData) <- gsub('mean', 'Mean', names(selectedData))
names(selectedData) <- gsub('std', 'Std', names(selectedData))
names(selectedData) <- gsub('-', '', names(selectedData))
names(selectedData) <- gsub('[()]', '', names(selectedData))
names(selectedData) <- gsub("^t", "time", names(selectedData))
names(selectedData) <- gsub("^f", "frequency", names(selectedData))
names(selectedData) <- gsub("Acc", "Accelerometer", names(selectedData))
names(selectedData) <- gsub("Gyro", "Gyroscope", names(selectedData))
names(selectedData) <- gsub("Mag", "Magnitude", names(selectedData))
names(selectedData) <- gsub("BodyBody", "Body", names(selectedData))

# Review and verify the created data set
str(selectedData)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
# Load librayr reshape2
library(reshape2)
# Melt selectedData by activity and subject
selectedDataMelt <- melt(selectedData, id = c("activity", "subject"))
# Generate the tidy set
selectedDataTidy <- dcast(selectedDataMelt, activity + subject ~ variable, mean)
# Create the file tidydata.txt containing the tidy data set
write.table(selectedDataTidy, file = file.path(filePath, "tidydata.txt" ), row.name = FALSE)
