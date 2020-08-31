# ----
# Question 1
# What are the drinking habits of students at this university? 
# In particular, what is the typical number of drinks a student has
# during a week? 
# Does the data suggest that drinking is a problem in this university?

# ----
# load data into work-space
load("drinking.RData")

# view data frame
head(data) # columns are Gender, Alcohol, Height, Cheat

# ----
# Select Alcohol column, Variable is quantitative
# Exploratory Data Analysis
hist(dataf$Alcohol) # histogram - describe features for single quantitative dist

# five number summary of data
summary(data$Alcohol)
