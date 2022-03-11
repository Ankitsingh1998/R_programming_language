#Data Structures in R:
#4. Matrices: A matrix is a two dimensional data set with rows and columns.
#It is similar to a vector, but has an additional dimension.
#Matrix() - function to create a matrix

x<-matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)  #nrow - number of rows
print(x)                                   #ncol - number of columns

y<-matrix(c(6,5,4,3,2,1), nrow=2,)  #All elements have to be of ame type - similar to vectors
print(y)                                   #The data is filled column-wise by default
                                           #On skipping one of the parameter, other will automatically calculated from the length of the data
#To access the elements of a matrix, we need to pass the row and column inside square bracket, separated by comma
print(y[1, 3])
print(y[2, 2])             #print(y[3, 2])   -   will result in an error since bounds are off-limit

print(y[1, ])            #To access an entire row
print(y[2, ])
print(y[, 1])            #To access an entire column
print(y[ ,2])
print(y[ ,3])

y[2, 3]<-0
print(y)                 #Assigning new values to the matrix


#Matrix operations:
#Transpose of a matrix - The transpose of a matrix is an operator which flips a matrix over its diagonal.
#It switches the row and column indices of the matrix - t() function
a<-matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
b<-t(a)
print(a)             #original matrix
print(b)             #transpose of the original matrix
                     #Matrices are a popular data structure, as they allow to store and manipulate data that has rows and columns structure.


