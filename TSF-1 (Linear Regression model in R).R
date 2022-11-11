# Importing and Loading the Data set
TSF1 <- read.csv("http://bit.ly/w-data")
# Viewing the whole Data set
View(TSF1)
# Viewing the fist 6 rows of the data set
head(TSF1)
# Viewing the last 6 rows of the data set
tail(TSF1)
# Structure of the Data set
str(TSF1)
# Summary of the Data set
summary(TSF1)
# Checking for the missing values
is.na(TSF1)
# Checking the presence of outliers if any
boxplot(TSF1)
# Visualizing the correlation in the data set
plot(TSF1, main = "Study Hours vs Marks Scoured", xlab = "Study Hours", ylab ="Marks Scoured", col = "Blue")
# Checking the strength of correlation
cor(TSF1)
# Linear Regression model for prediction
LRmodel <- lm(TSF1$Scores ~ TSF1$Hours)
# Summary of the Model
summary(LRmodel)
# Linear Regression equation of the model
LRequation <- c("2.4837 + 9.7758*Hours")
print(LRequation)
# Ploting the  linesr regression line 
abline(LRmodel)
# Creating the Model function to find the value
LRvalue <- function(Hours){2.4837 + 9.7758*Hours}
# calling the function and putting the hours studied to predict the score
Predicted_Score <- LRvalue(9.25)
# Displaying the predicted score
print(Predicted_Score)

