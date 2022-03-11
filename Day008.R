#Data Structures in R:
#Vectors store elements of the same type using one dimension.
#Matrices are like vectors and have 2 dimensions: rows and columns.
#Lists are similar to vectors and allows to store different types of elements.
#Most commonly our data comes in the form of a table and each column of the table can be of different types.
#Suppose we want to store different types of elements in 2 dimensions. What should we do??
#Here comes, the most important data structure of R, that is, a DataFrame.

#A DataFrame is is a table, where each column of the table has a name and contains any type of data.
#Each column must contain the same number of data items.
#data.frame() - function to create a DataFrame

people <- data.frame('id' = 1:11, 
                'names'= c ('James', 'Emma', 'Austin', 'Charles', 'Andrew', 'Thomas', 'Tom', 'Mandy', 'Amanda', 'Bella', 'Mike'),
                'age' = c(22, 21, 23, 24, 29, 23, 20, 22, 26, 21, 45),
                'gender' = c('M', 'F', 'M', 'M', 'M', 'M', 'M', 'F', 'F', 'F', 'M'))

print(people)                    #DataFrame of 11 rows and 4 columns.

print(people[2])                 #accessing entire column, also give column name - a dataframe   
print(people[[2]])               #double square brackets - column name will not be printed
print(people['names'])           #column can be printed along with column name - a dataframe
print(people[['names']])         #using double square bracket - will not show column name
print(people$names)              #dataframe_name$column_name - similar to calling by column name or by column index
                                 #while using the $, we cannot call it by index number but only by column name


people_names = people['names']   #calling by single square bracket will return a dataframe
print(people_names)

print(people[2:5, 1:3])          #calling as a matrix to access specific rows and columns - use single square brackets only
print(people[5, 3])              #calling as a matrix for specific element - use single/double square brackets
print(people[[5, 3]])

cat(people[[5, 3]])
cat(people[5, 3])
#cat(people[2:5, 1:3])  -  list type can't be handled by cat function

print(people[[2,'names']])       #calling by row index and column name
print(people[2,'age'])
print(people[2:6,'names'])       #calling for a range of rows - single square bracket

cat(people[[2,'names']])         #calling by row index and column name
cat(people[2,'age'])
cat(people[2:6,'names'])         #Again, here double square brackets cannot be used

print(people$names[2])           #when using $ we can also specify row
cat(people$names[2]) 

print(people$names[[2]])         #Using single/double square brackets will not affect it
cat(people$names[[2]])

#print(people$names[[2:7]])      - double square brackets for a range of row number will not work
#cat(people$names[[2:7]])        - double square brackets for a range of row number will not work
print(people$names[2:7])         #no problem with single square brackets
cat(people$names[2:7])           #iteration in double square brackets gives error


#DataFrame operations:
x <- data.frame('id'=1:3, 'name'=c('James', 'Amy', 'Mandy'), 'age' = c(21, 23, 24))
print(x)

x$country = c('USA', 'Canada', 'USA')      #Adding a new column - by $, single/double square brackets
print(x)

print(x[x$age>21,])         #Filtering rows by conditions, similar to a matrix
                            #comma after the condition is necessary

#subset() function - To filter a DataFrame
print(subset(x, age>21))
print(subset(x, age>21 & country=='USA'))    #logical operators can also be used in filtering

#cat(subset(x, age>21))                      - list cannot be handled by cat function
#cat(subset(x, age>21 & country=='USA'))

print(mean(x$age))        #Since a column of a DataFrame is like a vector so vector operations can be done on a column
print(median(x$age))
print(sort(x$age))
print(sum(x$age))

summary_x = summary(x)    #summary() - function to give statistics of columns of a DataFrame
print(summary_x)


#Factor - to categorize a column with text data
gender<-factor(c('M', 'F', 'F'))

print(levels(gender))            #will show the different categories

print(table(gender))             #assign unique codes to different categories
 
x$gender = gender                #Assigning new column gender
print(x)                         #Check the dataframe


