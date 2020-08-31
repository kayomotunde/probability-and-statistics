# ----
# Question 2
# One of the statistics professors at this university uses the honor system
# when giving exams. If there were cheating going on during her exams, 
# would the professor be likely to know about it?

# ----
# Select Cheat column, Variable is categorical
# Exploratory Data Analysis
tbl = table(data$Cheat) # category table of counts
100*tbl/sum(tbl) # convert category table from counts to percentages
pie(tbl) # pie chart
