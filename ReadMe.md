This ReadMe file describes the processing in the script "run_analysis.R", which processes input data from the "Human Activity Recognition Using Smartphones" Dataset, to create the filtered output data set described in the code book (CodeBook.md).

The data was first downloaded from the course website:
https://class.coursera.org/getdata-007/human_grading/view/courses/972585/assessments/3/submissions

It was then unzipped to the following folder:
C:\Users\Barry\Documents\Personal\Bioinformatics\Johns Hopkins\Getting and Cleaning Data Sep 2014\CourseProject\

The remainder of the processing is all done by the script. Steps are as follows:

1. Set working directory as described above.

2. Read the original data:
a. names of activities: activity_labels.txt
b. names of features (names of the columns of x): features.txt
c. test and training x (feature) values:
   test\x_test.txt
   train\x_train.txt
d. test and training y (activity) values
   test\y_test.txt
   train\y_train.txt
e. test and training subject values:
   test\subject_test.txt
   train\subject_train.txt

3. For each item read above (c, d, and e), merge rows of test data with rows of training data.

4. Set the names of the columns of x to the feature names from features.txt.

5. Change the numeric y (activity) values into the corresponding activity names from activity_labels.txt.

6. Change name of the y column to "Activity".

7. Change name of subject column to "Subject".

8. Column-wise merge the x, y and subject tables. The subject values are the first column, the y values the second column, and the columns of x are the remaining columns.

9. In the above data, remove any x columns which do not represent mean or standard deviation values.

10. In the above data, there are numerous measurements for each subject/activity combination. We next average the variables (columns of x) over all measurements for each subject/activity combination. This forms a new table with the same column names as the old one, but with each row representing a unique subject/activity combination. The x columns of such a row form the averages of each variable for all measurements for this subject/activity combination in the old table. 

11. In this table, reformat the names of columns 2 and above (the names of the x variables), per the 
  domain-signal-instrument-statistic-dimension
format described in the code book. I chose to use all lower case, as recommended in the lecture. However I used dashes to separate different pieces of the name, as I felt this made the names easier to read. Furthermore, the parts of each name have different meanings, for example which instrument the measurement is from. Separating these parts by dashes separates these distinct parts of each name. This is further described in the code book.

12. Write the data out to "UCI HAR FilteredData.txt", with no row names written.
