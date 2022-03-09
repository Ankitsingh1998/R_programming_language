#functions: A block of code that can be called using its name.
#A function can also take parameters as input and return values.
#functions can have multiple parameters, separated by commas.

#max function:
max1 = max(2,5,8,12)
print(max1)

#min function:
min1 = min(2,5,8,12)
print(min1)

#user-defined functions: use function keyword and assign it to a name
example = function(x, y) {
  result = x^y
  cat(result)
}

example(2, 5)


#Default parameter values
cube <- function(x, y=3) {
  result = x^y                 #y is by default set to 3. So, we have to provide only for x.
  print(result)                #Parameter: The variable listed inside the parentheses in the function definition.
}                              #Argument: The value that is sent to the function when it is called.
                               #Here, x and y are the parameters.
                               #The values we provide while calling the function are the arguments.
cube(28)


#return function - to return a value from our function.
cube = function(x, y=3) {
  result = x^y
  return(result)
  return(x)            #After 1st return function is called the code breaks there and further code will not be implemented.
}

print(cube(26))
print(cube(26, 2))     #default values can be assigned with new values.



