#R programming language:

print('Hello World!')

#R is the most widely used statistics programming language.
#It is the no.1 choice of data scientists and analysts.
#Finance, Data Scienec, Machine Learning
  
x = 42
print(x)
x

#Variable allows to store and manipulate data.
#Variables have a name and a value.
#Assignment operator (=)
    
name1 = 'Rockky'
print(name1)

#Leftward operator (<-)
      
y<-12
print(y)

y<-'Bruno'
print(y)

var1<-3.14
var2='Bruno Jenkins'
var3<-11L

#print(var1, var2, var3) - will give an error

print(var1)

print(var2)

print(var3)

#L -> R stores the value as an integer. else, it will store the value as numeric.
        
msg = 'This is called \"escaping\".'
print(msg)

msg1 = "This is called \'escaping\'."
print(msg1)

#cat -> to get outpt without backslashes.
#cat will not output the line numbers of the output in square brackets.
      
msg2 = "This is called \"escaping\"."
cat(msg2)

cat('Ankit', 'Singh') #concatenate (print in one line.)
#print('Ankit', 'Singh') #It will give an error

#Basic arithmetic operations.
        
x<-11
y<-5
      
#addition (+)
cat(x+y)

#subtraction (-)
print(y-x)

#multiplication (*)
print(x*y)

#division (/)
cat(x/y)

#exponentiation (^ or **)
print(x^y)

cat(x**y)

      
#modulus - remainder from division
print(x%%y)

#integer division - quotient
cat(x%/%y)

print(10/2)

#Math function - min, max, sqrt(square root)
cat(min(x,y))

cat(max(x,y))

sqrt(y)

cat(x>12)

print(x=11)

print(x==1)

print(x==11)

#Relational operators
        
#greater than (>)
print(y>6)

#less than (<)
print(y<6)

#equal to (==)
print(y==5)

#geater than or equal to (>=)
print(y>=5)

#less than equal to (<=)
print(x<=11)

#not equal to (!=)
print(x!=10)
