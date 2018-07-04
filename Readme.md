Getting and Cleaning Data - Course Project

This is the course project for the Getting and Cleaning Data course of the Data Science specialisation. The R script, “run_analysis.R”, does the following:

1.Download the dataset if it does not already exist in the working directory
2.Read the test and training datasets and the activity labels and features
3.Merges the test and training datasets
4.Extracts only the mean and std deviation measurements for each measurement
5.Converts the “activity” and “subject” columns into factors 
6.Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.

The end result is shown in the file “tidy_data.txt”.
