library(data.table)
library(plyr)

dirName <- 'UCI HAR Dataset'
zipfileName <- 'getdata-projectfiles-UCI HAR Dataset.zip'
downloadUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

# Download the dataset and unzip it if necessary
if(!file.exists(dirName)){
  dir.create(dirName)
  if(!file.exists(zipfileName)){
    download.file(downloadUrl, zipfileName, method='curl')
  }
  unzip(zipfileName)
}

# Read activity labels and set column names
activity_labels <- read.table(paste(dirName, "/activity_labels.txt", sep=""))
colnames(activity_labels) <- c('activityId', 'activityName')


# Read feature names and set column names
features <- read.table(paste(dirName, "/features.txt", sep=""))
colnames(features) <- c('featureId', 'featureName')


# Read subject_train data set and set colum names
subject_train <- read.table(paste(dirName, "/train/subject_train.txt", sep=""))
colnames(subject_train) <- c('subject')


# Read X_train data set and set column names to feature names
X_train <- read.table(paste(dirName, "/train/X_train.txt", sep=""))
colnames(X_train) <- features$featureName


# Read y_train data set and set column names
y_train <- read.table(paste(dirName, "/train/y_train.txt", sep=""))
colnames(y_train) <- c('activityId')

# Read subject_test data set and set column names
subject_test <- read.table(paste(dirName, "/test/subject_test.txt", sep=""))
colnames(subject_test) <- c('subject')

# Read X_test data set and set column names to feature names
X_test <- read.table(paste(dirName, "/test/X_test.txt", sep=""))
colnames(X_test) <- features$featureName

# Read y_test data set and set column names
y_test <- read.table(paste(dirName, "/test/y_test.txt", sep=""))
colnames(y_test) <- c('activityId')

# Combine columns of train data
train_all <- cbind(X_train, subject_train, y_train)

# Combine columns test data
test_all <- cbind(X_test, subject_test, y_test)

# Combine rows of train data with test data
data_all <- rbind(train_all, test_all)

# Create a factor of activity labels
data_all$activity <- factor(data_all$activityId, levels=activity_labels$activityId,
         labels=activity_labels$activityName)

# Find column names containing mean(), std(), subject or activity
columns <- grep("mean\\(\\)|std\\(\\)|subject|activity$", colnames(data_all), value=T)

# Subset columns
data <- data_all[, columns]

# Convert -mean to -Mean
colnames(data) <- gsub("-mean", "Mean", colnames(data))

# Convert -std to -Std
colnames(data) <- gsub("-std", "Std", colnames(data))

# Remove parentheses and hyphens from column names
colnames(data) <- gsub("-|\\(|\\)", "", colnames(data))

# Calculate average of each variable for each activity and each subject
tidy <- aggregate(data[, -which(names(data) %in% c('activity', 'subject'))],
                  by=list(activity=data$activity, subject=data$subject), FUN="mean")

# Write tidy dataset to a file
write.table(tidy, "tidy.txt", sep="\t", row.name=FALSE)
