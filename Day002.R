#Taking inputs
#readLines function - used to read every line given as seperate inputs, making it a convenient way to read multiple inputs
#stdin - parameter needed to read the standard input

input1 <- readLines(con=stdin(), n=5L, ok=TRUE) #n - number of lines to provide input

#The variable is actually a vector.

x = input1[2] #readLines - called by input line in square brackets.Here, 2nd line of input.

x <- as.integer(x) #to convert string to integer

print(x*2)

#readline -> for single line input
x <- readline(prompt='Enter a character:')
cat(x)

#newlines in R:
y <- 'Hello\nWorld!'
print(y) #no line break
cat(y) #line break

#Decision Making - if/else/(else if) statement
#if keyword is followed by the condition in parentheses and with a code block in curly braces, which gets executed when the condition holds TRUE.

z <- as.integer(readline(prompt='Enter a number:'))

if (z>0) {
cat('z is a positive number.')  
} else if (z==0){
  print('z is null.')
} else {
  cat('z is negative number.')
}

#Logical operators
#AND operator - &
x<-8
y<-4
if (x>y & x>0) {
  print('x is greater than y and is a positive number.')
} else {
  print('x is less than y.')
}

#OR operator - |
x <- 8
y <- -5
if (x>0 | y>0) {
  print('Either of x and y is positive.')
} else {
  print('None of x and y are positive.')
}

#NOT operator - !
x = TRUE
print(!x)
print(!!x)

#switch statement
#R provides a switch statement to test an expression against a list of values and makes the code much shorter, compared to using else if statements.
x<-3
result<-switch(x,'first','second','third','fourth') #It calls the index provided. In R, index starts from 1.
print(result)

#Instead of index, we can also provide values to compare and values to return in case they match
y<-'c'
result <- switch(y,
                 'a'='Ankit Singh',
                 'b'='23 yrs',
                 "c"='Data Analyst',
                 'd'='python and R',
                 'e'='Petroleum Engineer'
                 )
print(result)



