# Course Project

# Download the file and unzip the file and remove the zip file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ",
              "Dataset.zip", mode="wb", method = "curl")
unzip("Dataset.zip")
file.remove("Dataset.zip")

# Read in the test data
setwd("UCI HAR Dataset/test")
lines <- scan(file="X_test.txt", what="", sep="\t")  # input as character
X_test <- read.table(text = lines)
subject_test <- read.table("subject_test.txt", sep = "\t")
y_test <- read.table("y_test.txt", sep = "\t")

# read in the 'features.txt' and 'activity_labels.txt' files
setwd("..")
lines <- scan(file="features.txt", what="", sep="\t")  # input as character
names <- read.table(text = lines)
lines <- scan(file="activity_labels.txt", what="", sep="\t")  # input as character
activity <- read.table(text = lines)


# Read in the train data
setwd("train")
lines <- scan(file="X_train.txt", what="", sep="\t")  # input as character
X_train <- read.table(text = lines)
subject_train <- read.table("subject_train.txt", sep = "\t")
y_train <- read.table("y_train.txt", sep = "\t")


library(dplyr)
# Change the values from y_test and y_train 
y_test <- y_test %>% mutate(V1 = factor(V1, labels = activity[ ,2]))
y_train <- y_train %>% mutate(V1 = factor(V1, labels = activity[ ,2]))


# Change the column names of the subject and y variables 
colnames(y_test) <- "activity";  colnames(y_train) <- "activity"
colnames(subject_test) <- "subject" 
colnames(subject_train) <- "subject"

# Change the column names of the X_test and X_train variables
colnames(X_test) <- make.names(names[ ,2], unique = TRUE)
colnames(X_train) <- make.names(names[ ,2], unique = TRUE)


# bind the subject, activity, and measurement data
testdata <- cbind(subject_test, y_test, X_test)
traindata <- cbind(subject_train, y_train, X_train)

# bind all of the test and train data by rows
all_data <- rbind(testdata, traindata)


# Selects only the relevant columns
Mean_Std_data <-
  all_data %>%
  select(contains("subject"), contains("activity"),
         contains("mean.."), contains("std.."), -contains("angle."))

# Calculate the tidy data set required
Tidy_data_set <-
  Mean_Std_data %>% group_by(subject, activity) %>% 
  summarise_each(funs(mean))
View(Tidy_data_set)

setwd(".."); setwd("..")

# Write the Tidy_data_set into a .txt file
write.table(Tidy_data_set, file = "Tidy_data_set.txt", 
            row.name = FALSE, sep = "\t")

# Write the columns names of the tidy data set to a .md file
write.table(colnames(Tidy_data_set), file = "CodeBook.md", 
            row.name = FALSE, quote = FALSE)