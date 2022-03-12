#Importing data: working on DataFrame
#read.csv() - to import dat6a stored in csv file

#check your working directory
print(getwd())                      #change working directory - session -> set working directory


df <- read.csv("Salary_Classification.csv", header = TRUE, sep = ",")         #importing a csv file

print(nrow(df))      #number of rows in our DataFrame
print(ncol(df))      #number of column in our DataFrame
print(df[1:5,])      #first five rows of our DataFrame

                     #print(mtcars)     -     a DataFrame already present in R. It can be accessed by simply calling mtcars.

print(summary(df))   #statistics of our dataset

#variance - a measure of spread in a dataset
#standard deviation - the measure of dispersion of a set of data from its mean.
#The higher the dispersion, the greater the standard deviation.

print(var(df$Salary))                #var() - function to return variance of a column/dataset
print(sd(df$Salary))                 #sd() - function to return standard deviation of a column/dataset

print(sd(df$Salary)^2)   #standard deviation is the square root of variance

print(sum(df$Salary))    #sum of all elements in Salary column

print(df[df$Salary == max(df$Salary),])   #condition provided to get the person details with maximum salary
                                          #comma after the condition is provided so that we can get all of the column values

#multiple conditions
x <- df[df$Department == 'Development', ] #Department with Development is filtered 
print(x)

y <- x[x$YearsExperience > 4.0, ]         #Now, persons with years of experience more than 4 is filtered out.
print(y)


#Correlation: to find the dependence between multiple columns  -  cor() function
#0 - less correlated
#1 - highly correlated
                            #round() function - to round decimals upto specified digits
corr = cor(df[, 2:5])       #correlation doesn't works with non-numeric data
corr = round(corr, 3)       #so, either first convert text data to numeric or,
print(corr)                 #apply without non-numeric data


#Grouping data: R allows to group the data by a column and calculate an aggregate for the groups
#1. by() - function to group data, returns an object that can be converted to a list
#first parameter - the column to apply the function on
#second parameter - the column to group the data by
#third parameter - the function we want to apply

z1 <- by(df$Salary, df$Department, mean)               #average salary grouped by different departments
print(z1)

z2 <- by(df$YearsExperience, df$Certification, min)    #minimum years of experience grouped by certification done
print(z2)


#2. tapply() - to group and run aggregate functions
#tapply() is similar to by() except it returns a matrix
#by() is actually a wrapper on tapply()
#tapply() takes parameters similar to by()

z3 <- tapply(df$Salary, df$Department, mean)
print(z3)

z4 <- tapply(df$YearsExperience, df$Certification, max)
print(z4)
