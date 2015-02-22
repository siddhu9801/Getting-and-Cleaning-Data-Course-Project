NOTE: The names of all the columns that I read in from the features.txt file have changed
a little bit. All of the non alphabetic characters, like the '()' and '-', have been 
changed to a period (.) when I assigned these column names to the new data frame I made.
Other than this, nothing else has been changed about the column names.

Also, all of the variables were normalized so there are no units for any of the variables

subject : The number corresponding to the 30 different subjects
activity : The activity that each of the subjects did for the different measurements
tBodyAcc.mean...X : Mean of time domain value of linear acceleration due to the body in X direction
tBodyAcc.mean...Y : Mean of time domain value of linear acceleration due to the body in Y direction
tBodyAcc.mean...Z : Mean of time domain value of linear acceleration due to the body in Z direction
tGravityAcc.mean...X : Mean of time domain value of linear acceleration due to gravity in X direction
tGravityAcc.mean...Y : Mean of time domain value of linear acceleration due to gravity in Y direction
tGravityAcc.mean...Z : Mean of time domain value of linear acceleration due to gravity in Z direction
tBodyAccJerk.mean...X : Mean of time domain value of linear acceleration due to the body derived in time in X direction
tBodyAccJerk.mean...Y : Mean of time domain value of linear acceleration due to the body derived in time in Y direction
tBodyAccJerk.mean...Z : Mean of time domain value of linear acceleration due to the body derived in time in Z direction
tBodyGyro.mean...X : Mean of time domain value of angular acceleration due to the body in X direction
tBodyGyro.mean...Y : Mean of time domain value of angular acceleration due to the body in Y direction
tBodyGyro.mean...Z : Mean of time domain value of angular acceleration due to the body in Z direction
tBodyGyroJerk.mean...X : Mean of time domain value of angular acceleration due to the body derived in time in X direction
tBodyGyroJerk.mean...Y : Mean of time domain value of angular acceleration due to the body derived in time in Y direction
tBodyGyroJerk.mean...Z : Mean of time domain value of angular acceleration due to the body derived in time in Z direction
tBodyAccMag.mean.. : Mean of time domain value of the magnitude of linear acceleration due to the body 
tGravityAccMag.mean.. : Mean of time domain value of the magnitude of linear acceleration due to gravity 
tBodyAccJerkMag.mean.. : Mean of time domain value of the magnitude of linear acceleration due to the body derived in time
tBodyGyroMag.mean.. : Mean of time domain value of the magnitude of angular acceleration due to the body 
tBodyGyroJerkMag.mean.. : Mean of time domain value of the magnitude of angular acceleration due to the body derived in time
fBodyAcc.mean...X : Mean of frequency domain value of linear acceleration due to the body in X direction obtained by a Fast Fourier Transform
fBodyAcc.mean...Y : Mean of frequency domain value of linear acceleration due to the body in Y direction obtained by a Fast Fourier Transform
fBodyAcc.mean...Z : Mean of frequency domain value of linear acceleration due to the body in Z direction obtained by a Fast Fourier Transform
fBodyAccJerk.mean...X : Mean of frequency domain value of linear acceleration due to the body derived in time in X direction obtained by a Fast Fourier Transform
fBodyAccJerk.mean...Y : Mean of frequency domain value of linear acceleration due to the body derived in time in Y direction obtained by a Fast Fourier Transform
fBodyAccJerk.mean...Z : Mean of frequency domain value of linear acceleration due to the body derived in time in Z direction obtained by a Fast Fourier Transform
fBodyGyro.mean...X : Mean of frequency domain value of angular acceleration due to the body in X direction obtained by a Fast Fourier Transform
fBodyGyro.mean...Y : Mean of frequency domain value of angular acceleration due to the body in Y direction obtained by a Fast Fourier Transform
fBodyGyro.mean...Z : Mean of frequency domain value of angular acceleration due to the body in Z direction obtained by a Fast Fourier Transform
fBodyAccMag.mean.. : Mean of frequency domain value of the magnitude of linear acceleration due to the body obtained by a Fast Fourier Transform
fBodyBodyAccJerkMag.mean.. : Mean of frequency domain value of magnitude of linear acceleration due to the body derived in time obtained by a Fast Fourier Transform
fBodyBodyGyroMag.mean.. : Mean of frequency domain value of the magnitude of angular acceleration due to the body obtained by a Fast Fourier Transform
fBodyBodyGyroJerkMag.mean.. : Mean of frequency domain value of magnitude of angular acceleration due to the body derived in time obtained by a Fast Fourier Transform
tBodyAcc.std...X : Standard deviation of time domain value of linear acceleration due to the body in X direction
tBodyAcc.std...Y : Standard deviation of time domain value of linear acceleration due to the body in Y direction
tBodyAcc.std...Z : Standard deviation of time domain value of linear acceleration due to the body in Z direction
tGravityAcc.std...X : Standard deviation of time domain value of linear acceleration due to gravity in X direction
tGravityAcc.std...Y : Standard deviation of time domain value of linear acceleration due to gravity in Y direction
tGravityAcc.std...Z : Standard deviation of time domain value of linear acceleration due to gravity in Z direction
tBodyAccJerk.std...X : Standard deviation of time domain value of linear acceleration due to the body derived in time in X direction
tBodyAccJerk.std...Y : Standard deviation of time domain value of linear acceleration due to the body derived in time in Y direction
tBodyAccJerk.std...Z : Standard deviation of time domain value of linear acceleration due to the body derived in time in Z direction
tBodyGyro.std...X : Standard deviation of time domain value of angular acceleration due to the body in X direction 
tBodyGyro.std...Y : Standard deviation of time domain value of angular acceleration due to the body in Y direction
tBodyGyro.std...Z : Standard deviation of time domain value of angular acceleration due to the body in Z direction
tBodyGyroJerk.std...X : Standard deviation of time domain value of angular acceleration due to the body derived in time in X direction
tBodyGyroJerk.std...Y : Standard deviation of time domain value of angular acceleration due to the body derived in time in Y direction
tBodyGyroJerk.std...Z : Standard deviation of time domain value of angular acceleration due to the body derived in time in Z direction
tBodyAccMag.std.. : Standard deviation of time domain value of magnitude of linear acceleration due to the body
tGravityAccMag.std.. : Standard deviation of time domain value of magnitude of linear acceleration due to gravity
tBodyGyroMag.std.. : Standard deviation of time domain value of magnitude of angular acceleration due to the body
tBodyGyroJerkMag.std.. : Standard deviation of time domain value of magnitude of angular acceleration due to the body derived in time
fBodyAcc.std...X : Standard deviation of frequency domain value of linear acceleration due to the body in X direction obtained by a Fast Fourier Transform
fBodyAcc.std...Y : Standard deviation of frequency domain value of linear acceleration due to the body in Y direction obtained by a Fast Fourier Transform
fBodyAcc.std...Z : Standard deviation of frequency domain value of linear acceleration due to the body in Z direction obtained by a Fast Fourier Transform
fBodyAccJerk.std...X : Standard deviation of frequency domain value of linear acceleration due to the body derived in time in X direction obtained by a Fast Fourier Transform
fBodyAccJerk.std...Y : Standard deviation of frequency domain value of linear acceleration due to the body derived in time in Y direction obtained by a Fast Fourier Transform
fBodyAccJerk.std...Z : Standard deviation of frequency domain value of linear acceleration due to the body derived in time in Z direction obtained by a Fast Fourier Transform
fBodyGyro.std...X : Standard deviation of frequency domain value of angular acceleration due to the body in X direction obtained by a Fast Fourier Transform
fBodyGyro.std...Y : Standard deviation of frequency domain value of angular acceleration due to the body in Y direction obtained by a Fast Fourier Transform
fBodyGyro.std...Z : Standard deviation of frequency domain value of angular acceleration due to the body in Z direction obtained by a Fast Fourier Transform
fBodyAccMag.std.. : Standard deviation of frequency domain value of magnitude of linear acceleration due to the body obtained by a Fast Fourier Transform
fBodyBodyAccJerkMag.std.. : Standard deviation of frequency domain value of magnitude of linear acceleration due to the body derived in time obtained by a Fast Fourier Transform
fBodyBodyGyroMag.std.. : Standard deviation of frequency domain value of magnitude of angular acceleration due to the body obtained by a Fast Fourier Transform
fBodyBodyGyroJerkMag.std.. : Standard deviation of frequency domain value of magnitude of angular acceleration due to the body derived in time obtained by a Fast Fourier Transform
