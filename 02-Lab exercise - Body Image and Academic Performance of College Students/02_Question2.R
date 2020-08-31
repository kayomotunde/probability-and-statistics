# Question 2
# Are there differences between males and females with respect to body image?
# ----
# reflect on question
# Perhaps, certain societal prejudice exists that pays more attention to females
# body image than males, however, it is important to state in current times,
# it doesnt matter much. Notwithstanding, the insights from the data will be 
# interesting to see
# ----
# variables selected - Gender, WtFeel
# Both variables are categorical
# Gender is explanatory('x'), WtFeel is response ('y')

# Exploratory Data Analysis
# using a count table and conditional percentages,
# we'd examine the relationship between two categorical variables

tbl = table(data.frame(data$Gender, data$WtFeel)); # count table
100*tbl/rowSums(tbl) # row percentages

# The percentages for About Right, Overweight, and Underweight 
# for females are 73.79%, 22.07%, and 4.138%, respectively.
# The same percentages for males are: 66.67%, 17.86%, 15.48%.