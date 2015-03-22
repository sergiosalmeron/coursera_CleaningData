# Code book

##Steps

The steps taken by the script are as follows:
  - load the different files with the data to be used into different variables
  - load the variable names and activity names
  - merge the test and train sets for each data
  - select from the accelerometer data, the mean and standard deviation data
  - change the activity number for a more easily readable name
  - set the the variable name for each column
  - merge all the datasets
  - aggregate the output dataset calculating the average of each variable for each activity and each subject.
  - update the name of the mean values generated to add the ".mean" suffix.


## Variables
The variables in the output dataset are: 2 first variables with the id of the subject and the activity being performed while being sensed and a set of mean values from the accelerometer measures during that activity in that subject.

- "subject"
- "activity"
- "tBodyAcc-mean()-X.mean" 
- "tBodyAcc-mean()-Y.mean" 
- "tBodyAcc-mean()-Z.mean" 
- "tBodyAcc-std()-X.mean" 
- "tBodyAcc-std()-Y.mean" 
- "tBodyAcc-std()-Z.mean" 
- "tGravityAcc-mean()-X.mean" 
- "tGravityAcc-mean()-Y.mean" 
- "tGravityAcc-mean()-Z.mean" 
- "tGravityAcc-std()-X.mean" 
- "tGravityAcc-std()-Y.mean" 
- "tGravityAcc-std()-Z.mean" 
- "tBodyAccJerk-mean()-X.mean" 
- "tBodyAccJerk-mean()-Y.mean" 
- "tBodyAccJerk-mean()-Z.mean" 
- "tBodyAccJerk-std()-X.mean" 
- "tBodyAccJerk-std()-Y.mean" 
- "tBodyAccJerk-std()-Z.mean" 
- "tBodyGyro-mean()-X.mean" 
- "tBodyGyro-mean()-Y.mean" 
- "tBodyGyro-mean()-Z.mean" 
- "tBodyGyro-std()-X.mean" 
- "tBodyGyro-std()-Y.mean" 
- "tBodyGyro-std()-Z.mean" 
- "tBodyGyroJerk-mean()-X.mean" 
- "tBodyGyroJerk-mean()-Y.mean" 
- "tBodyGyroJerk-mean()-Z.mean" 
- "tBodyGyroJerk-std()-X.mean" 
- "tBodyGyroJerk-std()-Y.mean" 
- "tBodyGyroJerk-std()-Z.mean" 
- "tBodyAccMag-mean().mean" 
- "tBodyAccMag-std().mean" 
- "tGravityAccMag-mean().mean" 
- "tGravityAccMag-std().mean" 
- "tBodyAccJerkMag-mean().mean" 
- "tBodyAccJerkMag-std().mean" 
- "tBodyGyroMag-mean().mean" 
- "tBodyGyroMag-std().mean" 
- "tBodyGyroJerkMag-mean().mean" 
- "tBodyGyroJerkMag-std().mean" 
- "fBodyAcc-mean()-X.mean" 
- "fBodyAcc-mean()-Y.mean" 
- "fBodyAcc-mean()-Z.mean" 
- "fBodyAcc-std()-X.mean" 
- "fBodyAcc-std()-Y.mean" 
- "fBodyAcc-std()-Z.mean" 
- "fBodyAccJerk-mean()-X.mean" 
- "fBodyAccJerk-mean()-Y.mean" 
- "fBodyAccJerk-mean()-Z.mean" 
- "fBodyAccJerk-std()-X.mean" 
- "fBodyAccJerk-std()-Y.mean" 
- "fBodyAccJerk-std()-Z.mean" 
- "fBodyGyro-mean()-X.mean" 
- "fBodyGyro-mean()-Y.mean" 
- "fBodyGyro-mean()-Z.mean" 
- "fBodyGyro-std()-X.mean" 
- "fBodyGyro-std()-Y.mean" 
- "fBodyGyro-std()-Z.mean" 
- "fBodyAccMag-mean().mean" 
- "fBodyAccMag-std().mean" 
- "fBodyBodyAccJerkMag-mean().mean" 
- "fBodyBodyAccJerkMag-std().mean" 
- "fBodyBodyGyroMag-mean().mean" 
- "fBodyBodyGyroMag-std().mean" 
- "fBodyBodyGyroJerkMag-mean().mean" 
- "fBodyBodyGyroJerkMag-std().mean"
