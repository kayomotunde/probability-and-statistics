# Question 3
# Is students' academic performance in college related to their
# typical seating location in class?

# reflect on question
# ----
# One would expect that generally, students who sit in the front or middle of
# the classroom are the more conscientious students and therefore are also 
# students with higher GPAs. This is of course, a gross generalization. 
# It will be interesting to see whether the data will support this.

# ----
# variables selected - Seat, GPA
# Seat variable is categorical and it's the explanatory variable
# GPA variable is quantitative and it's the response variable

# Exploratory Data Analysis
# ----
# side-by-side boxplots and descriptive summaries to compare the distribution of
# a quantitative variable across several groups

# Side by Side Boxplots
plot(factor(data$Seat), data$GPA)

# Descriptive Statistics
tapply(data$GPA, factor(data$Seat), summary)

# What does the results mean?
# ----
# The data suggest that GPA is somewhat related to seating location. 
# In general, the GPAs of students who sit in the front of the classroom are 
# slightly higher than those of students who sit in the middle or in the back. 
# However, there is a lot of variation in GPA within each of the three groups, 
# and therefore the student's typical seating location should not really be used 
# as an indication of his/her performance in college.