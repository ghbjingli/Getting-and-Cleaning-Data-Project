#**Getting and Cleaning Data Project Codebook**

This code book describes the variables and the data in file tidydata.txt

The data set in tidydata.txt contains the average of each variable for each activity and each subject from the following data set:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The clean up and transformation processes are detailed in the comments in the run_analysis.R script.

The original data set represents data collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##**Identifiers**

activity - The type of activity performed. It includes WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
subject - The subject ID who performed the activity for each window sample. Its range is from 1 to 30.

##**Measurements**

*The measurements are average for each activity and each subject
The descriptive variable names for the measurements are based on the following
Time - The time domain signal
Body - Body
Accelerometer - Accelerometer
Gyroscope - Gyroscope
Gravity - Gravity
Mean - Mean Value
Std - Standard Deviation
X,Y,Z - 3-axial signals in the X, Y and Z directions
Magnitude - Magnitude*

The following are the 79 variable names:

timeBodyAccelerometerMeanX - Numeric from 0 to 1
timeBodyAccelerometerMeanY - Numeric from -1 to 0
timeBodyAccelerometerMeanZ - Numeric from -1 to 0
timeBodyAccelerometerStdX - Numeric from -1 to 1
timeBodyAccelerometerStdY - Numeric from -1 to 1
timeBodyAccelerometerStdZ - Numeric from -1 to 1
timeGravityAccelerometerMeanX - Numeric from -1 to 1
timeGravityAccelerometerMeanY - Numeric from -1 to 1
timeGravityAccelerometerMeanZ - Numeric from -1 to 1
timeGravityAccelerometerStdX - Numeric from -1 to 0
timeGravityAccelerometerStdY - Numeric from -1 to 0 
timeGravityAccelerometerStdZ - Numeric from -1 to 0
timeBodyAccelerometerJerkMeanX - Numeric from 0 to 1
timeBodyAccelerometerJerkMeanY - Numeric from -1 to 1
timeBodyAccelerometerJerkMeanZ - Numeric from -1 to 1
timeBodyAccelerometerJerkStdX - Numeric from -1 to 1
timeBodyAccelerometerJerkStdY - Numeric from -1 to 1
timeBodyAccelerometerJerkStdZ - Numeric from -1 to 1
timeBodyGyroscopeMeanX - Numeric from -1 to 1
timeBodyGyroscopeMeanY - Numeric from -1 to 1
timeBodyGyroscopeMeanZ - Numeric from -1 to 1
timeBodyGyroscopeStdX - Numeric from -1 to 1
timeBodyGyroscopeStdY - Numeric from -1 to 1
timeBodyGyroscopeStdZ - Numeric from -1 to 1
timeBodyGyroscopeJerkMeanX - Numeric from -1 to 0
timeBodyGyroscopeJerkMeanY - Numeric from -1 to 0
timeBodyGyroscopeJerkMeanZ - Numeric from -1 to 0
timeBodyGyroscopeJerkStdX - Numeric from -1 to 1
timeBodyGyroscopeJerkStdY - Numeric from -1 to 1
timeBodyGyroscopeJerkStdZ - Numeric from -1 to 1
timeBodyAccelerometerMagnitudeMean - Numeric from -1 to 1
timeBodyAccelerometerMagnitudeStd - Numeric from -1 to 1
timeGravityAccelerometerMagnitudeMean - Numeric from -1 to 1
timeGravityAccelerometerMagnitudeStd - Numeric from -1 to 1
timeBodyAccelerometerJerkMagnitudeMean - Numeric from -1 to 1
timeBodyAccelerometerJerkMagnitudeStd - Numeric from -1 to 1
timeBodyGyroscopeMagnitudeMean - Numeric from -1 to 1
timeBodyGyroscopeMagnitudeStd - Numeric from -1 to 1
timeBodyGyroscopeJerkMagnitudeMean - Numeric from -1 to 1
timeBodyGyroscopeJerkMagnitudeStd - Numeric from -1 to 1
frequencyBodyAccelerometerMeanX - Numeric from -1 to 1
frequencyBodyAccelerometerMeanY - Numeric from -1 to 1
frequencyBodyAccelerometerMeanZ - Numeric from -1 to 1
frequencyBodyAccelerometerStdX - Numeric from -1 to 1
frequencyBodyAccelerometerStdY - Numeric from -1 to 1
frequencyBodyAccelerometerStdZ - Numeric from -1 to 1
frequencyBodyAccelerometerMeanFreqX - Numeric from -1 to 1
frequencyBodyAccelerometerMeanFreqY - Numeric from -1 to 1
frequencyBodyAccelerometerMeanFreqZ - Numeric from -1 to 1
frequencyBodyAccelerometerJerkMeanX - Numeric from -1 to 1
frequencyBodyAccelerometerJerkMeanY - Numeric from -1 to 1
frequencyBodyAccelerometerJerkMeanZ - Numeric from -1 to 1
frequencyBodyAccelerometerJerkStdX - Numeric from -1 to 1
frequencyBodyAccelerometerJerkStdY - Numeric from -1 to 1
frequencyBodyAccelerometerJerkStdZ - Numeric from -1 to 0
frequencyBodyAccelerometerJerkMeanFreqX - Numeric from -1 to 1
frequencyBodyAccelerometerJerkMeanFreqY - Numeric from -1 to 1
frequencyBodyAccelerometerJerkMeanFreqZ - Numeric from -1 to 1
frequencyBodyGyroscopeMeanX - Numeric from -1 to 1
frequencyBodyGyroscopeMeanY - Numeric from -1 to 1
frequencyBodyGyroscopeMeanZ - Numeric from -1 to 1
frequencyBodyGyroscopeStdX - Numeric from -1 to 1
frequencyBodyGyroscopeStdY - Numeric from -1 to 1
frequencyBodyGyroscopeStdZ - Numeric from -1 to 1
frequencyBodyGyroscopeMeanFreqX - Numeric from -1 to 1
frequencyBodyGyroscopeMeanFreqY - Numeric from -1 to 1
frequencyBodyGyroscopeMeanFreqZ - Numeric from -1 to 1
frequencyBodyAccelerometerMagnitudeMean - Numeric from -1 to 1
frequencyBodyAccelerometerMagnitudeStd - Numeric from -1 to 1
frequencyBodyAccelerometerMagnitudeMeanFreq - Numeric from -1 to 1
frequencyBodyAccelerometerJerkMagnitudeMean - Numeric from -1 to 1
frequencyBodyAccelerometerJerkMagnitudeStd - Numeric from -1 to 1
frequencyBodyAccelerometerJerkMagnitudeMeanFreq - Numeric from -1 to 1
frequencyBodyGyroscopeMagnitudeMean - Numeric from -1 to 1
frequencyBodyGyroscopeMagnitudeStd - Numeric from -1 to 1
frequencyBodyGyroscopeMagnitudeMeanFreq - Numeric from -1 to 1
frequencyBodyGyroscopeJerkMagnitudeMean - Numeric from -1 to 1
frequencyBodyGyroscopeJerkMagnitudeStd - Numeric from -1 to 1
frequencyBodyGyroscopeJerkMagnitudeMeanFreq - Numeric from -1 to 1