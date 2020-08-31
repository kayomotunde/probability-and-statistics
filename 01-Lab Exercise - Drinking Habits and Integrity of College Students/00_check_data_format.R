# drinking
# load drinking data
load(file.path(getwd(), "drinking.RData"))

# Out of the first ten students in the datafile, 
first_ten <- data[1:10,]

# how many drink 15 or more alcoholic beverages per week?
hist(first_ten$Alcohol, breaks = 30) # 5

# how many alcoholic beverages per week does the tallest student drink?
first_ten[which.max(first_ten$Height),] # 15

# What is the height of the first male in the datafile who would report on cheating?
data_male <- data[data$Gender=="Male",]
data_male[match(1, data_male$Cheat), ] # 64