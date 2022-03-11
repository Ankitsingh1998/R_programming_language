#Data Structures in R:
#3. Lists: Lists are similar to vectors, but can store data of different types.
#list() function: to create list
x<-list('James', 24, 'Bob', 43, c('Emma'=22, 'Annie'=24, '22'='Hello!'), 'Williams'=32)
print(x[1])
print(x[4])
print(x[[3]])                 #using double square brackets will not print the index of the element.
print(x[[5]][1])              #first element of the stored vector inside the list.
print(x[[5]]['Emma'])         #value of the element stored in the vector inside the list.
print(x[[5]][['Emma']])       #only value of the element stored in the vector in the list.
print(x[[5]]['Annie'])        #value of the element stored in the vector inside the list.
print(x[[5]][['Annie']])      #only value of the element stored in the vector in the list.
print(x[[5]][22])             #No element as 22, so it will result in NA.
print(x['Williams'])          #only string can be assigned with values like, 'Hello!!!'=22 not 22='Hello!!!'
print(x[['Williams']])        #But numerics as strings can be assigned with values. '22'='Hello!!!'
print(x['James']) 

#A list can also contain a matrix or a function as its elements.
#Lists are used in R to represent data sets.

y<-list('name'='James', 'age'=24, 'role'='Data Analyst', 'gender'='M', 'married'=FALSE)
print(y['name'])       #assigned value will gets printed, if not any then NA will get printed.
print(y[['name']])     #double square brackets to print only value.
print(y$name)          #list_name$element will also do the same work as double square bracket.

y[['country']]<-'USA'  #adding an element to a list.
print(y)               #while assigning the value when adding a new element, double quotes must be used.


#List operations:
list1<-list(1,3,5,7,9)
list2<-list(0,2,4,6,8)

list3<-c(list1, list2)   #adding two lists - use c function
print(list3)


#converting a list to vector(unlist() function) to apply arithmetics
v1<-unlist(list1)
v2<-unlist(list2)
print(v1)    #converted to vector
print(v2)

v3<-v1+v2
print(v3)
print(sort(v3))
print(mean(v3))
print(median(v3))

list4<-list(v3)
print(list4)


a<-list('Amy', 22, 'F', 'Canada', 'Senior Developer')
b<-unlist(a)        #unlist a list will different datasets will convert each element to same type.
print(b)            #All elements get converted to string.

print(length(a))    #length of a list - since its similar to vector so it also uses length function for the number of elements

