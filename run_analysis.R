#################################################################################################
#                                                                                               #
#   Data collected from the accelerometers from the Samsung Galaxy S smartphone,                #
#   is cleaned up to create a tidy dataset that is stored in a file named "tidy_data.txt".      #
#                                                                                               #
#################################################################################################

library(dplyr)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- "accelerometer_Data.zip"


##########################################################
#                    Getting the data                    #
##########################################################

#Download the file if it does not exist in the working directory

if (!file.exists(destfile)){
download.file(url, destfile, method = "auto", quiet=FALSE)
}

#Unzip the file

unzip(destfile)

##########################################################
#                    Reading the data                    #
##########################################################

## Extracts the training data

training_Data <- read.table("UCI HAR Dataset/train/X_train.txt")
training_Activities <- read.table("UCI HAR Dataset/train/Y_train.txt")
training_Subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")


## Extracts the test data

test_Data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_Activities <- read.table("UCI HAR Dataset/test/Y_test.txt")
test_Subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")


## Reads the activity labels and features

activity_Labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

##########################################################
#                    Merging the data                    #
##########################################################

## Merges the training and the test data sets to create one data set.

merged_Activities <- rbind(training_Activities, test_Activities)
merged_Subjects <- rbind(training_Subjects, test_Subjects)
merged_Data <- rbind(training_Data, test_Data)

##########################################################
#       Extract mean and std deviation measurements      #
#       for each measurement.                            #
##########################################################

# Identify the columns containing mean or std deviation

mean_std <- grep(".*mean.*|.*std.*", features[,2])

# Select the columns containing mean or std deviation

merged_Data_Extract <- merged_Data[mean_std]

# Add the activities and subjects columns to the data set

merged_Data_Extract <- cbind(merged_Activities, merged_Subjects, merged_Data_Extract)

##########################################################
#   Label the data set with descriptive variable names   #
##########################################################

# Get the names of the selected columns
var_names <- features[mean_std,2]

# Remove special characters
var_names <- gsub("[\\(\\)-]", "", var_names)


# Replace names with descriptive ones

var_names <- gsub("^f", "frequencyDomain", var_names)
var_names <- gsub("^t", "TimeDomain", var_names)
var_names <- gsub("Acc", "Accelerometer", var_names)
var_names <- gsub("Gyro", "Gyroscope", var_names)
var_names <- gsub("Mag", "Magnitude", var_names)
var_names <- gsub("Freq", "Frequency", var_names)
var_names <- gsub("mean", "Mean", var_names)
var_names <- gsub("std", "StandardDeviation", var_names)


#Assign the new names to the data set

colnames(merged_Data_Extract) <- c("Activity", "Subject", var_names)

##########################################################
#       Use descriptive names for the activities         #
##########################################################

# Replace numeric activity values with named factor levels
merged_Data_Extract$Activity <- factor(merged_Data_Extract$Activity, 
  levels = activity_Labels[,1], labels = activity_Labels[,2])

##########################################################
# Create a second, independent tidy set with the average #
# of each variable for each activity and each subject    #
##########################################################

# group by subject and activity and summarise using mean
activity_Means <- merged_Data_Extract %>% 
  group_by(Subject, Activity) %>%
  summarise_all(funs(mean))

# write the output to file "tidy_data.txt"
write.table(activity_Means, "tidy_data.txt", row.names = FALSE, quote = FALSE)