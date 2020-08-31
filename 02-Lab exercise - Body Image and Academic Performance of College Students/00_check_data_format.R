# ----
# Variables
# Gender  : Male or Female
# Height  : Self-reported height (in inches)
# GPA     : Student's cumulative college GPA
# HS_GPA  : Student's high school GPA (senior year)
# Seat    : Typical classroom seat location (F = Front, M = Middle, B = Back)
# WtFeel  : Does the student feel that he/she is: Underweight, About Right, 
#            Overweight
# Cheat   : Would the tell the instructor if he/she saw somebody cheating 
#           on exam? (No or Yes)
# ----
# load data from body_image.Rdata file
load("body_image.RData")
# ----
# Check Data Format - answer some questions

# Out of the first ten students in the data file, how many typically sit 
# in the back of the classroom?
first_ten_students <- data[1:10,]
first_ten_students[first_ten_students$Seat=='B',] # 2 individuals

# Out of the first ten students in the data file, how many students have
# a college GPA which is higher than their high school GPA?
mask <- first_ten_students$GPA > first_ten_students$HS_GPA
first_ten_students[mask,] # 3 individuals

# What is the typical seat of the student with the highest GPA 
# among the first ten students in the data file? (use the code as your answer)
first_ten_students[which.max(first_ten_students$GPA),] # M
