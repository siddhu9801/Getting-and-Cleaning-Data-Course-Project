# How I created the Tidy_data_set.txt file

My script first downloads the zip file and saves it in the working directory as "Dataset.zip" and then it unzips that file and then deletes the zip file, leaving only the contents of the zip file in the working directory

Then I change my working directory to the 'test' folder, and from there I first read the different 'test' files and save them as data.frames under appropriate variable names

Then I go back a directory, to the 'UCI HAR Dataset' directory, and read in the data for the different activities and the names of the different columns for the test and train variables

Then I jump to the 'train' directory and do the same thing as I did in the 'test' directory

Then, using the 'dplyr' package, I change the values given in the different 'y' files to the corresponding activities based on the numbers

Then I change the column names for both the 'subject' variables and the 'y' variables to more appropriate column names

Then I change the column names in the two 'X' variables (test and train) to the names that I read in earlier 

Then I bind the 'subject', 'y' and 'X' variables together by columns for both the test and train data

Then I bind the data frames that I made in the last step by rows so that I now have one data frame that contains all the data for both 'test' and 'train' and save the data frame as 'all_data'

Then, again using the 'dplyr' package, I select only the columns from 'all_data' that have either 'subject', 'activity', 'mean..' or 'std..' in their column names. I also ignore any columns that have 'angle.' in their column name because when I first did this step, I realized that one column, containing 'angle.' in the column name, fit my original criteria but was still not a column that I wanted. (Note: I had to specify 'mean..' and 'std..' because for some reason when I made the column names it changed all of the non alphabetic characters to periods (.) so 'mean()' got changed to 'mean..' and the same for 'std')

Then I used the data frame I made in the previous step and I grouped that data frame by the first two columns ('subject' and 'activity') and then used the 'summarise_each' function of the 'dplyr' package to apply the 'mean' function to all of the columns of the data frame. After getting the new data frame where I have the all of the different column means grouped by both 'subject' and 'activity' I use the 'View' function to view my new data frame

Finally, I go back two directories to get back to the original directory that I started in and then I use the 'write.table' function to write the data frame from the last step into a .txt file saved as 'Tidy_data_set.txt'.
For this .txt file I use the 'row.name = FALSE' parameter to make sure that the different rows do not have any row names and the 'sep = "\t|"' to separate all the values in the .txt file by a tab

I also write the column names of the tidy data set that I created to a .md file and save that as 'CodeBook.md'. In the 'CodeBook.md' file, I list all the variables that are in the 'Tidy_data_set.txt' file and also gives short descriptions on those variables.
