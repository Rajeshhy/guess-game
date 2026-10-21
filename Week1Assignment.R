# ============================================================
# R SUMMARY STATISTICS ASSIGNMENT
# Simple Questions, Answers and R Code
# ============================================================


# ============================================================
# Q1. SUMMARY STATISTICS IN R
# ============================================================

# Q1.1 What is the difference between mean, median, mode,
#      standard deviation and range?
#
# Answer:
# Mean is the average of all the values.
# Median is the middle value when the data is arranged in order.
# Mode is the value that appears most often.
# Standard deviation tells us how spread out the values are
# from the average.
# Range shows the difference between the smallest and largest value.


# Mean
mean(c(10, 20, 30))


# Median
median(c(10, 20, 30, 40, 50))


# Mode
# A simple one-line way to find the most common value:
names(sort(table(c(10, 20, 20, 30, 40)), decreasing = TRUE))[1]


# Standard deviation
sd(c(10, 20, 30, 40, 50))


# Range
range(c(10, 20, 30, 40, 50))


# Difference between maximum and minimum
diff(range(c(10, 20, 30, 40, 50)))


# ------------------------------------------------------------
# Q1.2 What is a histogram?
#
# Answer:
# A histogram is a graph used to show how numerical data is
# distributed. It uses bars to show how many values fall into
# different groups or intervals.
#
# In simple words, it helps us see where most of the data is.
# ------------------------------------------------------------


# ------------------------------------------------------------
# Q1.3 What is a boxplot?
#
# Answer:
# A boxplot is a graph that gives a quick summary of a dataset.
# It shows the median, the middle 50% of the data, and the
# minimum and maximum values. It can also help us notice
# possible unusual values or outliers.
# ------------------------------------------------------------


# ------------------------------------------------------------
# Q1.4 What is a stem-and-leaf plot?
#
# Answer:
# A stem-and-leaf plot is a simple way to display numerical data.
# It splits each number into a stem and a leaf while still
# keeping the original values visible.
#
# For example:
# 21, 23, 25, 31, 34
#
# can be shown as:
# 2 | 1 3 5
# 3 | 1 4
# ------------------------------------------------------------


# ------------------------------------------------------------
# Q1.5 What is the par() function?
#
# Answer:
# The par() function is used to control the layout of graphs
# in R. It can be used to put two or more graphs together in
# the same window.
#
# For example, par(mfrow = c(1, 2)) means:
# 1 row and 2 columns, so two graphs will appear side by side.
# ------------------------------------------------------------


# Example:
par(mfrow = c(1, 2))


# ------------------------------------------------------------
# Q1.6 What is the relationship between a histogram and boxplot?
#
# Answer:
# Both a histogram and a boxplot help us understand numerical data.
# A histogram shows the frequency and shape of the data in more detail.
# A boxplot gives a quick summary of the centre and spread of the data.
# Using both together gives us a better idea of the distribution.
# ------------------------------------------------------------


# ------------------------------------------------------------
# Q1.7 How do we calculate and use these functions in R?
#
# Answer:
# R has simple functions for most of these calculations.
#
# mean()   = finds the average
# median() = finds the middle value
# sd()     = finds standard deviation
# range()  = finds the smallest and largest values
# stem()   = creates a stem-and-leaf plot
# hist()   = creates a histogram
# boxplot()= creates a boxplot
# par()    = controls the layout of graphs
# ------------------------------------------------------------



# ============================================================
# Q2. CREATING AND ANALYSING MY OWN DATASET
# ============================================================

# My dataset contains information about 10 students.
# It has 5 columns:
#
# Student_ID  = ID number of the student
# Study_Hours = number of hours studied
# Test_Score  = score in the test
# Attendance  = attendance percentage
# Sleep_Hours = average hours of sleep


# ============================================================
# DATA TO SAVE AS my_dataset.txt
# ============================================================
#
# Copy the following into a text file named my_dataset.txt:
#
# Student_ID Study_Hours Test_Score Attendance Sleep_Hours
# 101 2 55 72 6
# 102 4 68 80 7
# 103 5 74 85 7
# 104 3 62 78 6
# 105 6 81 92 8
# 106 4 68 80 7
# 107 7 88 95 8
# 108 5 76 88 7
# 109 3 62 78 6
# 110 6 81 92 8


# ============================================================
# Q2(a). Import my_dataset.txt into R
# ============================================================

# Answer:
# I used read.table() because my dataset is a .txt file.
# header = TRUE tells R that the first row contains the column names.

my_data <- read.table(file = "/Users/rajeshyadav/Desktop/r-practice/my_dataset.txt",header = TRUE)
# Display the dataset
my_data

# Check the structure of the dataset
str(my_data)

# Show the first few rows
head(my_data)


# ============================================================
# Q2(b). Summary statistics for my dataset
# ============================================================

# First, get a quick summary of the whole dataset:
summary(my_data)


# ------------------------------------------------------------
# Study Hours
# ------------------------------------------------------------

mean(my_data$Study_Hours)
median(my_data$Study_Hours)

# Mode - one line of code
names(sort(table(my_data$Study_Hours), decreasing = TRUE))[1]

sd(my_data$Study_Hours)
range(my_data$Study_Hours)
diff(range(my_data$Study_Hours))


# Simple interpretation:
# The average study time is 4.5 hours.
# The study hours range from 2 to 7 hours.
# This shows that students in this dataset have different
# amounts of study time.


# ------------------------------------------------------------
# Test Scores
# ------------------------------------------------------------

mean(my_data$Test_Score)
median(my_data$Test_Score)

# Mode - one line of code
names(sort(table(my_data$Test_Score), decreasing = TRUE))[1]

sd(my_data$Test_Score)
range(my_data$Test_Score)
diff(range(my_data$Test_Score))


# Simple interpretation:
# The average test score is 71.5.
# The scores range from 55 to 88.
# The standard deviation shows that the scores are spread out
# around the average.


# ------------------------------------------------------------
# Attendance
# ------------------------------------------------------------

mean(my_data$Attendance)
median(my_data$Attendance)

# Mode - one line of code
mode <- names(sort(table(my_data$Attendance), decreasing = TRUE))[1]
print(mode)


sd(my_data$Attendance)
range(my_data$Attendance)
diff(range(my_data$Attendance))


# Simple interpretation:
# The average attendance is 84%.
# Attendance ranges from 72% to 95%.
# This shows some difference in attendance between students.


# ------------------------------------------------------------
# Sleep Hours
# ------------------------------------------------------------

mean(my_data$Sleep_Hours)
median(my_data$Sleep_Hours)

# Mode - one line of code
names(sort(table(my_data$Sleep_Hours), decreasing = TRUE))[1]

sd(my_data$Sleep_Hours)
range(my_data$Sleep_Hours)
diff(range(my_data$Sleep_Hours))


# Simple interpretation:
# The average sleep time is 7 hours.
# Sleep hours range from 6 to 8 hours.
# The values are quite close to each other.


# ============================================================
# HISTOGRAMS
# ============================================================

# Q: How do I create a histogram?
# A: I use the hist() function.

hist(my_data$Study_Hours,
     main = "Study Hours",
     xlab = "Study Hours",
     ylab = "Frequency")

hist(my_data$Test_Score,
     main = "Test Scores",
     xlab = "Test Score",
     ylab = "Frequency")

hist(my_data$Attendance,
     main = "Attendance",
     xlab = "Attendance (%)",
     ylab = "Frequency")

hist(my_data$Sleep_Hours,
     main = "Sleep Hours",
     xlab = "Sleep Hours",
     ylab = "Frequency")


# ============================================================
# BOXPLOTS
# ============================================================

# Q: How do I create a boxplot?
# A: I use the boxplot() function.

boxplot(my_data$Study_Hours,
        main = "Study Hours",
        ylab = "Study Hours")

boxplot(my_data$Test_Score,
        main = "Test Scores",
        ylab = "Test Score")

boxplot(my_data$Attendance,
        main = "Attendance",
        ylab = "Attendance (%)")

boxplot(my_data$Sleep_Hours,
        main = "Sleep Hours",
        ylab = "Sleep Hours")


# ============================================================
# STEM-AND-LEAF PLOTS
# ============================================================

# Q: How do I make a stem-and-leaf plot?
# A: I use the stem() function.

stem(my_data$Study_Hours)
stem(my_data$Test_Score)
stem(my_data$Attendance)
stem(my_data$Sleep_Hours)


# ============================================================
# Q2(c). Use par() to plot data next to each other
# ============================================================

# Answer:
# I can use par(mfrow = c(1, 2)) to place two plots side by side.

par(mfrow = c(1, 2))

hist(my_data$Test_Score,
     main = "Test Score Histogram",
     xlab = "Test Score",
     ylab = "Frequency")

boxplot(my_data$Test_Score,
        main = "Test Score Boxplot",
        ylab = "Test Score")

# Reset the graph layout
par(mfrow = c(1, 1))


# ============================================================
# EXTRA: FOUR PLOTS TOGETHER
# ============================================================

# par(mfrow = c(2, 2)) creates 2 rows and 2 columns.

par(mfrow = c(2, 2))

hist(my_data$Study_Hours,
     main = "Study Hours",
     xlab = "Hours")

hist(my_data$Test_Score,
     main = "Test Scores",
     xlab = "Score")

hist(my_data$Attendance,
     main = "Attendance",
     xlab = "Percentage")

hist(my_data$Sleep_Hours,
     main = "Sleep Hours",
     xlab = "Hours")

# Reset layout
par(mfrow = c(1, 1))

par(mfrow = c(1, 2))

hist(my_data$Test_Score,
     main = "Test Score Histogram",
     xlab = "Test Score",
     ylab = "Frequency")

boxplot(my_data$Test_Score,
        main = "Test Score Boxplot",
        ylab = "Test Score")


# ============================================================
# FINAL ANSWER / CONCLUSION
# ============================================================

# I used R to import my own text dataset and calculate summary
# statistics such as mean, median, mode, standard deviation and range.
#
# I also created histograms, boxplots and stem-and-leaf plots to
# understand the data visually.
#
# Finally, I used the par() function to place graphs next to each
# other. This makes it easier to compare different plots.
#
# Overall, R makes it simple to calculate statistics and understand
# the distribution of numerical data using both calculations and graphs.
