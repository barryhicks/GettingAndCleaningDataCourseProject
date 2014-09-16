# location of data set
setwd("C:\\Users\\Barry\\Documents\\Personal\\Bioinformatics\\Johns Hopkins\\Getting and Cleaning Data Sep 2014\\CourseProject\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset")

# labels of activities (y values)
al = read.table("activity_labels.txt")

# labels of features (columns of x)
fl = read.table("features.txt")

# read test and training x values
xte = read.table("test\\x_test.txt")
xtr = read.table("train\\x_train.txt")

# merge rows of both into one table
x = rbind(xte, xtr)

# make feature labels the column names for x
names(x) = as.character(fl$V2)

# read y tables and merge rows into one table
yte = read.table("test\\y_test.txt")
ytr = read.table("train\\y_train.txt")
y = rbind(yte, ytr)

# likewise, read and merge subject tables
ste = read.table("test\\subject_test.txt")
str = read.table("train\\subject_train.txt")
s = rbind(ste, str)

# change column names of y to activity labels
y$V1 = sapply(y$V1, function(x) (al$V2[x]))

# relabel column names of activity and subject
names(y) = "Activity"
names(s) = "Subject"

# merge subjects and activities as first two columns of x
x = cbind(s, x)
x = cbind(y, x)

# select only data columns containing mean or std
# also keep the first two columns of Activity and Subject
x = x[, grep("Activity|Subject|mean|std", names(x))]


# number of subjects and activities
nsubj = max(x$Subject)
nact = nrow(al)

# empty data frame with one row for each unique subject/activity combo
ave_of_ave = data.frame(matrix(NA, nrow=nsubj*nact, ncol=dim(x)[2]-2))

# these will be activity and subject columns in the new data fame
newy <- vector("character")
news <- vector()

# loop through all subjects and activities
ii = 1
for (si in 1:nsubj){
  for (ai in 1:nact) {
    # select just rows for this subject and activity
    subj_act = x[x$Subject == si & x$Activity == al$V2[ai],]
    # apply mean to each column (skip first two columns which are subj & act)
    subj_act_means = apply(subj_act[,3:ncol(x)], 2, mean)
    # add result as a row of new data frame
    ave_of_ave[ii,] = subj_act_means
    # add subject and activity to corresponding output vectors
    newy[ii] = as.character(al$V2[ai])
    news[ii] = si
    ii = ii + 1
  }
}
# add subject and activity columns to "ave of ave" data frame
ave_of_ave = cbind(news, ave_of_ave)
ave_of_ave = cbind(newy, ave_of_ave)
# get names of new data frame right also
names(ave_of_ave) = names(x)

# reformat names as described in the code book:
#   domain-signal-instrument-statistic-dimension
# get rid of parens
names(ave_of_ave) = gsub("\\(\\)","",names(ave_of_ave))
# reorganize order to match formatting described above
names(ave_of_ave) = gsub("Mag-meanFreq","-meanfreq-mag",names(ave_of_ave))
names(ave_of_ave) = gsub("Mag-mean","-mean-mag",names(ave_of_ave))
names(ave_of_ave) = gsub("Mag-std","-std-mag",names(ave_of_ave))
names(ave_of_ave) = gsub("^t","t-",names(ave_of_ave))
names(ave_of_ave) = gsub("^f","f-",names(ave_of_ave))
names(ave_of_ave) = gsub("BodyBody","Body",names(ave_of_ave))
names(ave_of_ave) = gsub("BodyGyroJerk","BodyJerkGyro",names(ave_of_ave))
names(ave_of_ave) = gsub("BodyAccJerk","BodyJerkAcc",names(ave_of_ave))
names(ave_of_ave) = gsub("Gyro","-Gyro",names(ave_of_ave))
names(ave_of_ave) = gsub("Acc","-Acc",names(ave_of_ave))
# make all lower care
names(ave_of_ave) = gsub("Body","body",names(ave_of_ave))
names(ave_of_ave) = gsub("Jerk","jerk",names(ave_of_ave))
names(ave_of_ave) = gsub("Acc","acc",names(ave_of_ave))
names(ave_of_ave) = gsub("Freq","freq",names(ave_of_ave))
names(ave_of_ave) = gsub("Gyro","gyro",names(ave_of_ave))
names(ave_of_ave) = gsub("Gravity","gravity",names(ave_of_ave))
names(ave_of_ave) = gsub("-X","-x",names(ave_of_ave))
names(ave_of_ave) = gsub("-Y","-y",names(ave_of_ave))
names(ave_of_ave) = gsub("-Z","-z",names(ave_of_ave))

# write the data out
write.table(ave_of_ave, "UCI HAR FilteredData.txt", row.names=FALSE)
