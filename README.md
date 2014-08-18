# Getting and Cleaning Data Course Project

## The files:

1.  CodeBook.md - The code book for the variables in the tidy dataset.
2.  run_analysis.R - The script that creates the tidy dataset.
3.  tidy.txt - The tidy dataset.

## The Script

To run the script, call:

    source('run_analysis.R')

The script processes the Human Activity Recognition Using Smartphones Dataset into a tidy
dataset.

The script checks if the dataset is available in the current working directory, and if not,
it downloads and uzips it.

The data is processed with the following steps:

1.  The activity labels are loaded from "activity_labels.txt". 
2.  The features are loaded from "features.txt".
3.  Subject training data is loaded from "/train/subject_train.txt".
4.  The features for the training data are loaded from "/train/X_train.txt" and the variable names are set appropriately.
5.  The activity ids for the training data are loaded from "/train/y_train.txt".
6.  Subject test data is loaded from "/test/subject_test.txt".
7.  The features for the test data are loaded from "/test/X_test.txt" and the variable names are set appropriately.
8.  The activity ids for the test data are loaded from "/test/y_test.txt".
9.  The columns of the training datasets are combined into one dataset.
10.  The columns of the test datasets are combined into one dataset.
11.  The rows of the traning and test datasets are combined into one dataset.
12.  A factor with activity labels is added to the dataset.
13.  The subset of the data with variable names containing 'mean()', 'std()' or equal to 'activity', 'subject' is created.
14.  -mean is converted to Mean in variable names.
15.  -std is converted to Std in variable names.
16.  Parentheses and hyphens are removed from variable names.
17.  The average of each variable for each activity and subject is calculated.
18.  The data is written to the 'tidy.txt' file.

## Why is this dataset tidy?

-  Each variable is in one column.
-  Each observation is in a different row.
-  The file includes a row with variable names.
-  Vrunariable names are human readable.

The variables in the tidy data set are:

-  Lower case, each word starts with a capital letter (except for the first one) for readability.
-  Descriptive.
-  Not duplicated.
-  Don't contain dots, underscores or white spaces.

