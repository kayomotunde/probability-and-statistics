# Question 1
# Is there a relationship between students' college GPAs and their high school GPAs?
# ----
# reflect on question
# Typically, there should be a positive trend and moderate to high strength 
# of the relationship between the two variables, as it is expected that 
# High School performance is a pre-cursor to results in College
# ----
# variables selected - HS_GPA and GPA
# both variables are quantitative
# HS_GPA - explanatory variable ('x')
# GPA - response variable ('y')

# Exploratory Data Analysis
# Using a scatter-plot and correlation r (if applicable),
# let's describe the relationship between the two variables

# conduct analysis
x_scale <- c(1.2, 4.0)
y_scale <- c(1.2, 4.5)
plot(data$HS_GPA, data$GPA, xlim = x_scale, ylim = y_scale) # Scatter-plot
cor(data$HS_GPA, data$GPA, use = "c")
# ----
# The results indicate that in general the students who have a higher 
# high school GPA will tend to also have a higher college GPA, and vice versa. 
# The results further indicate that this relationship is linear 
# and that it is moderately strong.
# ----
# Since the relationship between the students' high school GPAs and college GPAs 
# is linear (as displayed by the scatterplot and supported by the
# correlation coefficient r being relatively close to 1), 
# it makes sense to go ahead and find the regression line - 
# the line that best fits the linear pattern of our data
L=lm(data$GPA~data$HS_GPA);
abline(L);
cf=coefficients(L);
lt=paste("GPA = ",round(cf[1],2),"+",round(cf[2],2),"HS_GPA")
legend(1.7,4.3,lt)

# The results are consistent with what can be expected.
# ----
# Suggestion
# We should intervene and counsel students while still in high school. 
# Knowing that students with low GPAs are at risk of not doing well in college, 
# colleges should develop programs, such as peer or faculty mentors, for these students.