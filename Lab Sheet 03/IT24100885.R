setwd("C:\\SLIIT\\IT2120 PS\\Lab 3\\IT24100885")
getwd()

student_data <- read.csv("Exercise.csv")


# 2. Summary statistics and histogram for X1 (Age)
summary(student_data$X1)
hist(student_data$X1,
     main = "Histogram of Age (X1)",
     xlab = "Age",
     col = "skyblue",
     border = "black")

# 3. Bar chart and frequency table for X2 (Gender)
gender_freq <- table(student_data$X2)
print(gender_freq)


# Bar chart
barplot(table(student_data$X2),
        main = "Gender Distribution (X2)",
        xlab = "Gender",
        ylab = "Frequency",
        col = c("lightpink", "lightblue"))


# 4. Analyze Age (X1) by Accommodation (X3)
# Boxplot for age according to accommodation type
boxplot(X1 ~ X3, data = student_data,
        main = "Age Distribution by Accommodation Type",
        xlab = "Accommodation Type",
        ylab = "Age",
        col = c("lightgreen", "lightyellow", "lightblue"))



