This code book summarizes the resulting data fields in tidy_data.txt.

Identifiers
�	Subject - The ID of the test subject
�	Activity - The type of activity performed when the measurements were taken


Measurements
�	Subject
�	Activity
�	TimeDomainBodyAccelerometerMeanX
�	TimeDomainBodyAccelerometerMeanY
�	TimeDomainBodyAccelerometerMeanZ
�	TimeDomainBodyAccelerometerStandardDeviationX
�	TimeDomainBodyAccelerometerStandardDeviationY
�	TimeDomainBodyAccelerometerStandardDeviationZ
�	TimeDomainGravityAccelerometerMeanX
�	TimeDomainGravityAccelerometerMeanY
�	TimeDomainGravityAccelerometerMeanZ
�	TimeDomainGravityAccelerometerStandardDeviationX
�	TimeDomainGravityAccelerometerStandardDeviationY
�	TimeDomainGravityAccelerometerStandardDeviationZ
�	TimeDomainBodyAccelerometerJerkMeanX
�	TimeDomainBodyAccelerometerJerkMeanY
�	TimeDomainBodyAccelerometerJerkMeanZ
�	TimeDomainBodyAccelerometerJerkStandardDeviationX
�	TimeDomainBodyAccelerometerJerkStandardDeviationY
�	TimeDomainBodyAccelerometerJerkStandardDeviationZ
�	TimeDomainBodyGyroscopeMeanX
�	TimeDomainBodyGyroscopeMeanY
�	TimeDomainBodyGyroscopeMeanZ
�	TimeDomainBodyGyroscopeStandardDeviationX
�	TimeDomainBodyGyroscopeStandardDeviationY
�	TimeDomainBodyGyroscopeStandardDeviationZ
�	TimeDomainBodyGyroscopeJerkMeanX
�	TimeDomainBodyGyroscopeJerkMeanY
�	TimeDomainBodyGyroscopeJerkMeanZ
�	TimeDomainBodyGyroscopeJerkStandardDeviationX
�	TimeDomainBodyGyroscopeJerkStandardDeviationY
�	TimeDomainBodyGyroscopeJerkStandardDeviationZ
�	TimeDomainBodyAccelerometerMagnitudeMean
�	TimeDomainBodyAccelerometerMagnitudeStandardDeviation
�	TimeDomainGravityAccelerometerMagnitudeMean
�	TimeDomainGravityAccelerometerMagnitudeStandardDeviation
�	TimeDomainBodyAccelerometerJerkMagnitudeMean
�	TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
�	TimeDomainBodyGyroscopeMagnitudeMean
�	TimeDomainBodyGyroscopeMagnitudeStandardDeviation
�	TimeDomainBodyGyroscopeJerkMagnitudeMean
�	TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
�	frequencyDomainBodyAccelerometerMeanX
�	frequencyDomainBodyAccelerometerMeanY
�	frequencyDomainBodyAccelerometerMeanZ
�	frequencyDomainBodyAccelerometerStandardDeviationX
�	frequencyDomainBodyAccelerometerStandardDeviationY
�	frequencyDomainBodyAccelerometerStandardDeviationZ
�	frequencyDomainBodyAccelerometerMeanFrequencyX
�	frequencyDomainBodyAccelerometerMeanFrequencyY
�	frequencyDomainBodyAccelerometerMeanFrequencyZ
�	frequencyDomainBodyAccelerometerJerkMeanX
�	frequencyDomainBodyAccelerometerJerkMeanY
�	frequencyDomainBodyAccelerometerJerkMeanZ
�	frequencyDomainBodyAccelerometerJerkStandardDeviationX
�	frequencyDomainBodyAccelerometerJerkStandardDeviationY
�	frequencyDomainBodyAccelerometerJerkStandardDeviationZ
�	frequencyDomainBodyAccelerometerJerkMeanFrequencyX
�	frequencyDomainBodyAccelerometerJerkMeanFrequencyY
�	frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
�	frequencyDomainBodyGyroscopeMeanX
�	frequencyDomainBodyGyroscopeMeanY
�	frequencyDomainBodyGyroscopeMeanZ
�	frequencyDomainBodyGyroscopeStandardDeviationX
�	frequencyDomainBodyGyroscopeStandardDeviationY
�	frequencyDomainBodyGyroscopeStandardDeviationZ
�	frequencyDomainBodyGyroscopeMeanFrequencyX
�	frequencyDomainBodyGyroscopeMeanFrequencyY
�	frequencyDomainBodyGyroscopeMeanFrequencyZ
�	frequencyDomainBodyAccelerometerMagnitudeMean
�	frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
�	frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
�	frequencyDomainBodyBodyAccelerometerJerkMagnitudeMean
�	frequencyDomainBodyBodyAccelerometerJerkMagnitudeStandardDeviation 



Activity Labels

Value	Activity
1	WALKING
2	WALKING_UPSTAIRS
3	WALKING_DOWNSTAIRS
4	SITTING
5	STANDING
6	STANDING


Getting and Cleaning Data - Course Project

This is the course project for the Getting and Cleaning Data course of the Data Science specialisation. The R script, �run_analysis.R�, does the following:

1.	Download the dataset if it does not already exist in the working directory
2.	Read the test and training datasets and the activity labels and features
3.	Merges the test and training datasets
4.	Extracts only the mean and std deviation measurements for each measurement
5.	Converts the �activity� and �subject� columns into factors 
6.	Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.

The end result is shown in the file �tidy_data.txt�.

