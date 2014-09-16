
Processed Data Contained in "UCI HAR FilteredData.txt"

----------------------------------

Overview

The data described here is based on data from the "Human Activity Recognition Using Smartphones" Dataset, Version 1.0. We have consolidated and processed the data to create
"UCI HAR FilteredData.txt", which we describe here.

The data from the original experiment contained 10299 measurements (rows in the table). Each measurement was for a specific individual (subject) at a specific time, doing a specific activity. Each row contained many measurements (variables) from this specific subject/activity/time.

From this data, we took only measurements (columns or variables) representing the following statistics:
- mean: Mean value
- std: Standard deviation
- meanFreq: Weighted average of the frequency components to obtain a mean frequency

We further averaged these measurements over all time samples, for each unique subject/activity combination. The data described here contains for each row the activity and subject (the combination of these should be unique for each row), plus average data measurements in the remaining columns.

The dataset described here contains 180 rows (unique subject/activity combinations) and 81 columns.

The data is further described below.

----------------------------------

Naming of Variables (Columns)

The first two columns are as follows:

Activity = WALKING
, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS
, SITTING
, STANDING
 or LAYING

  activity being performed by the subject

Subject = subject number (1 through 30)
  subject performing the activity

The remaining variables (columns) are named as follows:

domain-signal-instrument-statistic-dimension

where:

domain = t or f
  t = time domain
  f = frequency domain

signal = gravity, body, or bodyjerk
  gravity = gravity acceleration signal
  body = body acceleration signal
  bodyjerk = Jerk signal derived from body acceleration

instrument = acc or gyro
  acc = accelerometer
  gyro = gyroscope

statistic = mean, std, or meanfreq
  mean = mean value of original signal
  std = standard deviation of original signal
  meanfreq = Weighted average of the frequency components to obtain a mean frequency

dimension = x, y, z, or mag
  x = X vector component
  y = Y vector component
  z = Z vector component
  mag = magnitude of vector (using Euclidean norm)

----------------------------------

Details of each Variable

Activity      
  activity being performed by the subject:
    WALKING
, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS
, SITTING
, STANDING
 or LAYING
   
          
Subject        
  subject performing the activity (1..30)

The remaining features are normalized and bounded within [-1,1]:
           
t-body-acc-mean-x  
  time domain, body acceleration signal, accelerometer, mean value, X axis
         
t-body-acc-mean-y           
  time domain, body acceleration signal, accelerometer, mean value, Y axis
   
t-body-acc-mean-z         
  time domain, body acceleration signal, accelerometer, mean value, Z axis
      
t-body-acc-std-x  
  time domain, body acceleration signal, accelerometer, standard deviation, X axis
            
t-body-acc-std-y     
  time domain, body acceleration signal, accelerometer, standard deviation, Y axis
         
t-body-acc-std-z   
  time domain, body acceleration signal, accelerometer, standard deviation, Z axis
  
t-gravity-acc-mean-x    
  time domain, gravity acceleration signal, accelerometer, mean value, X axis
       
t-gravity-acc-mean-y        
  time domain, gravity acceleration signal, accelerometer, mean value, Y axis
    
t-gravity-acc-mean-z         
  time domain, gravity acceleration signal, accelerometer, mean value, Z axis
   
t-gravity-acc-std-x    
  time domain, gravity acceleration signal, accelerometer, standard deviation, X axis
      
t-gravity-acc-std-y 
  time domain, gravity acceleration signal, accelerometer, standard deviation, Y axis
          
t-gravity-acc-std-z 
  time domain, gravity acceleration signal, accelerometer, standard deviation, Z axis
         
t-bodyjerk-acc-mean-x    
  time domain, jerk signal derived from body acceleration, accelerometer, mean value, X axis
       
t-bodyjerk-acc-mean-y       
  time domain, jerk signal derived from body acceleration, accelerometer, mean value, Y axis
  
t-bodyjerk-acc-mean-z        
  time domain, jerk signal derived from body acceleration, accelerometer, mean value, Z axis
  
t-bodyjerk-acc-std-x        
  time domain, jerk signal derived from body acceleration, accelerometer, standard deviation, X axis
  
t-bodyjerk-acc-std-y         
  time domain, jerk signal derived from body acceleration, accelerometer, standard deviation, Y axis
  
t-bodyjerk-acc-std-z        
  time domain, jerk signal derived from body acceleration, accelerometer, standard deviation, Z axis
  
t-body-gyro-mean-x  
  time domain, body acceleration signal, gyroscope, mean value, X axis
            
t-body-gyro-mean-y    
  time domain, body acceleration signal, gyroscope, mean value, Y axis
          
t-body-gyro-mean-z    
  time domain, body acceleration signal, gyroscope, mean value, Z axis
           
t-body-gyro-std-x   
  time domain, body acceleration signal, gyroscope, standard deviation, X axis
        
t-body-gyro-std-y  
  time domain, body acceleration signal, gyroscope, standard deviation, Y axis
          
t-body-gyro-std-z  
  time domain, body acceleration signal, gyroscope, standard deviation, Z axis
          
t-bodyjerk-gyro-mean-x     
  time domain, jerk signal derived from body acceleration, gyroscope, mean value, X axis
  
t-bodyjerk-gyro-mean-y    
  time domain, jerk signal derived from body acceleration, gyroscope, mean value, Y axis
    
t-bodyjerk-gyro-mean-z    
  time domain, jerk signal derived from body acceleration, gyroscope, mean value, Z axis
     
t-bodyjerk-gyro-std-x 
  time domain, jerk signal derived from body acceleration, gyroscope, standard deviation, X axis
        
t-bodyjerk-gyro-std-y  
  time domain, jerk signal derived from body acceleration, gyroscope, standard deviation, Y axis
           
t-bodyjerk-gyro-std-z  
  time domain, jerk signal derived from body acceleration, gyroscope, standard deviation, Z axis
          
t-body-acc-mean-mag  
  time domain, body acceleration signal, accelerometer, mean value, magnitude      
 
t-body-acc-std-mag        
  time domain, body acceleration signal, accelerometer, standard deviation, magnitude 
 
t-gravity-acc-mean-mag    
  time domain, gravity acceleration signal, accelerometer, mean value, magnitude  
 
t-gravity-acc-std-mag   
  time domain, gravity acceleration signal, accelerometer, standard deviation, magnitude  
  
t-bodyjerk-acc-mean-mag 
  time domain, jerk signal derived from body acceleration, accelerometer, mean value, magnitude   
    
t-bodyjerk-acc-std-mag  
  time domain, jerk signal derived from body acceleration, standard deviation, mean value, magnitude 
  
t-body-gyro-mean-mag      
  time domain, body acceleration signal, gyroscope, mean value, magnitude     

t-body-gyro-std-mag 
  time domain, body acceleration signal, gyroscope, standard deviation, magnitude  
        
t-bodyjerk-gyro-mean-mag  
  time domain, jerk signal derived from body acceleration, gyroscope, mean value, magnitude 
   
t-bodyjerk-gyro-std-mag 
  time domain, jerk signal derived from body acceleration, gyroscope, standard deviation, magnitude   
     
f-body-acc-mean-x  
  frequency domain, body acceleration signal, accelerometer, mean value, X axis         

f-body-acc-mean-y        
  frequency domain, body acceleration signal, accelerometer, mean value, Y axis     

f-body-acc-mean-z    
  frequency domain, body acceleration signal, accelerometer, mean value, Z axis      
     
f-body-acc-std-x      
  frequency domain, body acceleration signal, accelerometer, standard deviation, X axis  
      
f-body-acc-std-y  
  frequency domain, body acceleration signal, accelerometer, standard deviation, Y axis  
         
f-body-acc-std-z   
  frequency domain, body acceleration signal, accelerometer, standard deviation, Z axis  
       
f-body-acc-meanfreq-x  
  frequency domain, body acceleration signal, accelerometer, mean frequency, X axis  
    
f-body-acc-meanfreq-y    
  frequency domain, body acceleration signal, accelerometer, mean frequency, Y axis   
    
f-body-acc-meanfreq-z   
  frequency domain, body acceleration signal, accelerometer, mean frequency, Z axis 
      
f-bodyjerk-acc-mean-x  
  frequency domain, jerk signal derived from body acceleration, accelerometer, mean value, X axis
       
f-bodyjerk-acc-mean-y  
  frequency domain, jerk signal derived from body acceleration, accelerometer, mean value, Y axis 
        
f-bodyjerk-acc-mean-z  
  frequency domain, jerk signal derived from body acceleration, accelerometer, mean value, Z axis 
       
f-bodyjerk-acc-std-x   
  frequency domain, jerk signal derived from body acceleration, accelerometer, standard deviation, X axis 
      
f-bodyjerk-acc-std-y   
  frequency domain, jerk signal derived from body acceleration, accelerometer, standard deviation, Y axis 
     
f-bodyjerk-acc-std-z   
  frequency domain, jerk signal derived from body acceleration, accelerometer, standard deviation, Z axis 
      
f-bodyjerk-acc-meanfreq-x  
  frequency domain, jerk signal derived from body acceleration, accelerometer, mean frequency, X axis  

f-bodyjerk-acc-meanfreq-y 
  frequency domain, jerk signal derived from body acceleration, accelerometer, mean frequency, Y axis 
   
f-bodyjerk-acc-meanfreq-z 
  frequency domain, jerk signal derived from body acceleration, accelerometer, mean frequency, Z axis   

f-body-gyro-mean-x           
  frequency domain, body acceleration signal, gyroscope, mean value, X axis   

f-body-gyro-mean-y     
  frequency domain, body acceleration signal, gyroscope, mean value, Y axis        

f-body-gyro-mean-z    
  frequency domain, body acceleration signal, gyroscope, mean value, Z axis      
    
f-body-gyro-std-x 
  frequency domain, body acceleration signal, gyroscope, standard deviation, X axis    
       
f-body-gyro-std-y   
  frequency domain, body acceleration signal, gyroscope, standard deviation, Y axis  
        
f-body-gyro-std-z    
  frequency domain, body acceleration signal, gyroscope, standard deviation, Z axis 

f-body-gyro-meanfreq-x 
  frequency domain, body acceleration signal, gyroscope, mean frequency, X axis     

f-body-gyro-meanfreq-y   
  frequency domain, body acceleration signal, gyroscope, mean frequency, Y axis  
   
f-body-gyro-meanfreq-z   
  frequency domain, body acceleration signal, gyroscope, mean frequency, Z axis  
   
f-body-acc-mean-mag
  frequency domain, body acceleration signal, accelerometer, mean value, magnitude 
      
f-body-acc-std-mag   
  frequency domain, body acceleration signal, accelerometer, standard deviation, magnitude    
     
f-body-acc-meanfreq-mag  
  frequency domain, body acceleration signal, accelerometer, mean frequency, magnitude   

f-bodyjerk-acc-mean-mag 
  frequency domain, jerk signal derived from body acceleration, accelerometer, mean value, magnitude 
     
f-bodyjerk-acc-std-mag    
  frequency domain, jerk signal derived from body acceleration, accelerometer, standard deviation, magnitude  
 
f-bodyjerk-acc-meanfreq-mag 
  frequency domain, jerk signal derived from body acceleration, accelerometer, mean frequency, magnitude  

f-body-gyro-mean-mag        
  frequency domain, body acceleration signal, gyroscope, mean value, magnitude  

f-body-gyro-std-mag    
  frequency domain, body acceleration signal, gyroscope, standard deviation, magnitude 
       
f-body-gyro-meanfreq-mag  
  frequency domain, body acceleration signal, gyroscope, mean frequency, magnitude  

f-bodyjerk-gyro-mean-mag  
  frequency domain, jerk signal derived from body acceleration, gyroscope, mean value, magnitude 
   
f-bodyjerk-gyro-std-mag     
  frequency domain, jerk signal derived from body acceleration, gyroscope, standard deviation, magnitude 
   
f-bodyjerk-gyro-meanfreq-mag
  frequency domain, jerk signal derived from body acceleration, gyroscope, mean frequency, magnitude    

----------------------------------

Derivation of the Original Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals t-acc-xYZ and t-gyro-xYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (t-body-acc-xYZ and t-gravity-acc-xYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (t-bodyjerk-acc-xYZ and t-bodyjerk-gyro-xYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (t-body-acc-mag, t-gravity-acc-mag, t-bodyjerk-acc-mag, t-body-gyro-mag, t-bodyjerk-gyro-Mag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing f-body-acc-xYZ, f-bodyjerk-acc-xYZ, f-body-gyro-xYZ, f-bodyjerk-acc-mag, f-body-gyro-mag, f-bodyjerk-gyro-mag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-xYZ' is used to denote 3-axial signals in the X, Y and Z directions.

----------------------------------

Details of Original Experiment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
