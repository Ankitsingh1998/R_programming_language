#Loops in R: iteration
#while loop:
i<-1
while (i<=10) {
  cat(i)
  i = i+1
}

i<-1
while (i<=10) {
  cat(i,'\n')
  i = i+1
}

i<-1
while (i<=10) {
  print(i)
  i = i+1
}

#Avoiding an infinite loop
flag<-TRUE
while (flag==TRUE) {
  print('True statement.')
  flag<-FALSE
}


#For loop: To iterate over a given sequence
#lower bound and upper bound - both are included in for loop in R.
#The for loop is also used to iterate over lists and vectors in R.
for (x in 1:10) {
  print(x)
}

for (x in 4:16) {
  cat(x,'\n')
}


#break statement: It is used to stop a loop
#Odd numbers below 10.
i<-10
while (i>0) {
  if (i==4) {
    break               #code will stop when i reaches 4.
  } else {
    print(i)
  }
  i = i-1
}

for (x in -2:8) {
  if (x==2) {
    break                #code will stop when x reaches 2.
  } else {
    print(x)
  }
}


#next statement: allows to skip an iteration and continue running the loop at the next iteration.
i<-10
while (i>0) {
  if (i==4) {
    next               #code will skip when condition satisfies (i becomes 4).
  } else {
    cat(i,'\n')
  }
  i = i-1
}

for (x in -2:8) {
  if (x==2) {
    next                  #code will skip when condition satisfies (x becomes 2).
  } else {
    print(x)
  }
}
