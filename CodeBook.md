## The Code Book

#### activity
A factor variable describing the activity:

1.  "WALKING"
2.  "WALKING_UPSTAIRS"
3.  "WALKING_DOWNSTAIRS"
4.  "SITTING"
5.  "STANDING"
6.  "LAYING"
 
#### subject
1..30 Integer ID of the subject.

#### Time domain signals
Averages of the mean and std of the accelerometer and gyroscope signals in X, Y, Z directions
The values of these variables are numeric.

*  tBodyAccMeanX
*  tBodyAccMeanY
*  tBodyAccMeanZ
*  tBodyAccStdX
*  tBodyAccStdY
*  tBodyAccStdZ
*  tGravityAccMeanX
*  tGravityAccMeanY
*  tGravityAccMeanZ
*  tGravityAccStdX
*  tGravityAccStdY
*  tGravityAccStdZ
*  tBodyAccJerkMeanX
*  tBodyAccJerkMeanY
*  tBodyAccJerkMeanZ
*  tBodyAccJerkStdX
*  tBodyAccJerkStdY
*  tBodyAccJerkStdZ
*  tBodyGyroMeanX
*  tBodyGyroMeanY
*  tBodyGyroMeanZ
*  tBodyGyroStdX
*  tBodyGyroStdY
*  tBodyGyroStdZ
*  tBodyGyroJerkMeanY
*  tBodyGyroJerkMeanZ
*  tBodyGyroJerkStdX
*  tBodyGyroJerkStdY
*  tBodyGyroJerkStdZ
*  tBodyAccMagMean
*  tBodyAccMagStd
*  tGravityAccMagMean
*  tGravityAccMagStd
*  tBodyAccJerkMagMean
*  tBodyAccJerkMagStd
*  tBodyGyroMagMean
*  tBodyGyroMagStd
*  tBodyGyroJerkMagMean
*  tBodyGyroJerkMagStd

#### Frequency domain signals
Averages of the mean and std of the accelerometer and gyroscope signals in X, Y, Z directions with Fast Fourier Transform applied to them.
The values of these variables are numeric.

*  fBodyAccMeanX
*  fBodyAccMeanY
*  fBodyAccMeanZ
*  fBodyAccStdX
*  fBodyAccStdY
*  fBodyAccStdZ
*  fBodyAccJerkMeanX 
*  fBodyAccJerkMeanY 
*  fBodyAccJerkMeanZ 
*  fBodyAccJerkStdX  
*  fBodyAccJerkStdY  
*  fBodyAccJerkStdZ  
*  fBodyGyroMeanX 
*  fBodyGyroMeanY 
*  fBodyGyroMeanZ 
*  fBodyGyroStdX  
*  fBodyGyroStdY  
*  fBodyGyroStdZ  
*  fBodyAccMagMean
*  fBodyAccMagStd 
*  fBodyBodyAccJerkMagMean 
*  fBodyBodyAccJerkMagStd  
*  fBodyBodyGyroMagMean 
*  fBodyBodyGyroMagStd  
*  fBodyBodyGyroJerkMagMean
*  fBodyBodyGyroJerkMagStd 

## Summary Choices
All the variables are the averages of mean and std columns of the raw data.

## Study Design
The data was created based on the Human Activity Recognition Using Smartphones Dataset:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data was obtained with the following steps:

1.  The train and test datasets were merged into one dataset, the column names were set to the names of the features.
2.  A factor created from the activity labels was added to the dataset.
3.  The measurements on the mean and standard deviation for each measurement were extracted.
4.  The variable names were changed (hyphens and parentheses removed, mean and std replaced with Mean and Std).
5.  The average of each variable for each activity and each subject was calculated.