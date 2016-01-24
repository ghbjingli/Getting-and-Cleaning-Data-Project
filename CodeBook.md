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

timeBodyAccelerometerMeanX
timeBodyAccelerometerMeanY
timeBodyAccelerometerMeanZ
timeBodyAccelerometerStdX
timeBodyAccelerometerStdY
timeBodyAccelerometerStdZ
timeGravityAccelerometerMeanX
timeGravityAccelerometerMeanY
timeGravityAccelerometerMeanZ
timeGravityAccelerometerStdX
timeGravityAccelerometerStdY
timeGravityAccelerometerStdZ
timeBodyAccelerometerJerkMeanX
timeBodyAccelerometerJerkMeanY
timeBodyAccelerometerJerkMeanZ
timeBodyAccelerometerJerkStdX
timeBodyAccelerometerJerkStdY
timeBodyAccelerometerJerkStdZ
timeBodyGyroscopeMeanX
timeBodyGyroscopeMeanY
timeBodyGyroscopeMeanZ
timeBodyGyroscopeStdX
timeBodyGyroscopeStdY
timeBodyGyroscopeStdZ
timeBodyGyroscopeJerkMeanX
timeBodyGyroscopeJerkMeanY
timeBodyGyroscopeJerkMeanZ
timeBodyGyroscopeJerkStdX
timeBodyGyroscopeJerkStdY
timeBodyGyroscopeJerkStdZ
timeBodyAccelerometerMagnitudeMean
timeBodyAccelerometerMagnitudeStd
timeGravityAccelerometerMagnitudeMean
timeGravityAccelerometerMagnitudeStd
timeBodyAccelerometerJerkMagnitudeMean
timeBodyAccelerometerJerkMagnitudeStd
timeBodyGyroscopeMagnitudeMean
timeBodyGyroscopeMagnitudeStd
timeBodyGyroscopeJerkMagnitudeMean
timeBodyGyroscopeJerkMagnitudeStd
frequencyBodyAccelerometerMeanX
frequencyBodyAccelerometerMeanY
frequencyBodyAccelerometerMeanZ
frequencyBodyAccelerometerStdX
frequencyBodyAccelerometerStdY
frequencyBodyAccelerometerStdZ
frequencyBodyAccelerometerMeanFreqX
frequencyBodyAccelerometerMeanFreqY
frequencyBodyAccelerometerMeanFreqZ
frequencyBodyAccelerometerJerkMeanX
frequencyBodyAccelerometerJerkMeanY
frequencyBodyAccelerometerJerkMeanZ
frequencyBodyAccelerometerJerkStdX
frequencyBodyAccelerometerJerkStdY
frequencyBodyAccelerometerJerkStdZ
frequencyBodyAccelerometerJerkMeanFreqX
frequencyBodyAccelerometerJerkMeanFreqY
frequencyBodyAccelerometerJerkMeanFreqZ
frequencyBodyGyroscopeMeanX
frequencyBodyGyroscopeMeanY
frequencyBodyGyroscopeMeanZ
frequencyBodyGyroscopeStdX
frequencyBodyGyroscopeStdY
frequencyBodyGyroscopeStdZ
frequencyBodyGyroscopeMeanFreqX
frequencyBodyGyroscopeMeanFreqY
frequencyBodyGyroscopeMeanFreqZ
frequencyBodyAccelerometerMagnitudeMean
frequencyBodyAccelerometerMagnitudeStd
frequencyBodyAccelerometerMagnitudeMeanFreq
frequencyBodyAccelerometerJerkMagnitudeMean
frequencyBodyAccelerometerJerkMagnitudeStd
frequencyBodyAccelerometerJerkMagnitudeMeanFreq
frequencyBodyGyroscopeMagnitudeMean
frequencyBodyGyroscopeMagnitudeStd
frequencyBodyGyroscopeMagnitudeMeanFreq
frequencyBodyGyroscopeJerkMagnitudeMean
frequencyBodyGyroscopeJerkMagnitudeStd
frequencyBodyGyroscopeJerkMagnitudeMeanFreq