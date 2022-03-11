#Data Structures in R:
#1. Strings:
t1 = 'Hello'
t2<-'administrator,'
t3 <- 'Rockky'
t4<-'Bhai!'

result1 = paste(t1,t2,t3,t4)    #paste function: It combines multiple strings into one.
print(result1)                  #paste function uses a space as the separator and can take any number of parameters.
                                #concatenation - combining various strings.
cat(t1,t2,t3,t4)                #cut also combines multiple strings similar to paste function.

#separators can also be user-defined (sep='')
result2<-paste(t1,t2,t3,t4,sep='_')
print(result2)

#toupper - converts a string into upper case.
#tolower - converts a string into lower case.
text1<-'Hello World!'
print(toupper(text1))
print(tolower(text1))

#nchar - number of characters present in a string.
print(nchar(text1))

#substr - used to get a substring from a given string by using a start and end index.
text2<-substr(text1,7,12)
print(text2)


#2. Vectors : A basic data structures in R which is a sequence of elements of the same type.
#To create a vector we need to use c() function and the elements are separated by comma.
names<-c('Amy','Charles','Robert','Kevin','Sam','Brandon')
print(names[1])    #In R, index starts from 1.
print(names[5])

#character indices for vectors
ages<-c('Amy'=21,'Charles'=22,'Robert'=21,'Kevin'=23,'Sam'=19,'Brandon'=20)
print(ages[1])              #to call y index - will print both character and its value.
print(ages[5])
print(ages['Sam'])          #to call by character - will print both character and its value.
print(ages['Kevin'])
print(ages[['Kevin']])      #double square brackets with character - to get the value only.
print(ages[['Robert']])
print(ages[[2]])            #double square brackets with index - to get the value only.
print(ages[[6]])

#using negative index skips an element in the vector
names1<-c('Amy','Charles','Robert','Kevin','Sam','Brandon')
print(names1)

print(names1[-3]) #3rd element(Robert) will gets skipped and all other will gets printed.

print(names1[2:4])  #to print a range of stored values(accepts values with both starting and ending indices) - will store as a vector only.

#Vector functions:
#length - function that returns number of elements stored in a vector.
print(length(names1))

#sum - function that returns sum of all elements in a vector.
print(sum(ages))    #sum will execute only when stored data are in numeric format

#sort - function to sort elements of a vector in an ascending order - by default
print(sort(names1))   #sort by alphabets.
print(sort(ages))     #sort by numerics since main values are as numeric.

print(sort(names1, decreasing=TRUE))   #sort by descending order
print(sort(ages, decreasing=TRUE))     #sort by descending order

print(names1[7]) #index out of range - will print NA(not any)


#seq - function to create more complex sequences that follow a given rule.
x<-2:12
print(x)

y<-seq(2,12, by=3)     #by - parameter which defines steps to be used in the sequence.
print(y)

#Filtering - we can define conditions to filter the elements
z<-seq(0,100, by=2)    #even numbers between o and 100
print(z[z>50])     #even numbers greater than 50 in the sequence
print(z[z<10])     #single digit even numbers

#changing an element of a vector
x<-2:12
x[2] = 0
print(x)


#Vector arithmetics: Arithmetic operations can be done on two vectors of equal length
#If arithmetic operations is applied on two vectors of unequal lengths then the elements of the shorter vector will gets repeated to complete the operations.
a<-c(1,3,5,7,9)
b<-c(0,2,4,6,8)

c<-a + b           #Vector addition
print(c)

d<-a - b           #vector subtraction
print(d)

e<-a*b             #vector multiplication
print(e)

f<-a/b             #vector division
print(f)           #On dividing any finite number by 0 in R will print Infinite.(NaN in case 0 is divided by 0).

#vectors of different lengths
a<-c(1,3,5,7,9,11,13,15)
b<-c(2,4,6,8)

c<-a+b
d<-a-b                       #If arithmetic operations is applied on two vectors of unequal lengths,
e<-a*b                       #then the elements of the shorter vector will gets repeated to complete the operations.
f<-a/b                       #Condition is that longer vector must be a multiple of shorter vector.
print(c)                     
print(d)
print(e)
print(f)

a<-c(1,2,3,4,5,6,7,8,9)      #central tendencies in statistics - mean, median, mode, variance, standard deviation
print(mean(a))               #mean function for vectors
print(median(a))             #median function for vectors

