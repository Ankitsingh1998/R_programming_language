#Visualization in R:
#Data visualization allows us to find insights in the data as well as create reports to showcase the data and its features.
#R supports functions to create charts and graphs.

png(filename = 'plot1.png')     #png() - function to give our plot a name, so that it can be shown in the code playground
plot(1:10, main = 'My plot', xlab = 'x-axis', ylab = 'y-axis')   #plot() - function to create the plot
                                                                 #main - parameter to give the plot a title
                                                                 #xlab - parameter to name x-axis
                                                                 #ylab - parameter to name y-axis

df = read.csv('Salary_Classification.csv')
x<-df$YearsExperience
y<-df$Salary

png(filename = 'plot_xperience_vs_salary.png')
plot(x, y, xlab='Years_of_experience', ylab = 'Salary_of_employee')


#line graph:
png(filename = 'plot_xperience_vs_salary_line_plot.png')
plot(x, y, xlab='Years_of_experience', ylab = 'Salary_of_employee', type = 'l')   



#multiple plots
line1 <- c(0, 8, 14, 42)
line2 <- c(2, 4, 6, 8)

png(filename = "multiple_plot.png")
plot(line1, type = "l", col = "blue")    #plot() - function to draw the first line
lines(line2, type="l", col = "red")      #lines() - for next lines we use this, it works similar to plot()
                                         #col = parameter to specify color


#bar graph:
png(filename='barplot1.png')
barplot(df$Certification, names.arg = rownames(df))    #vertical bar graph

png(filename='barplot2.png')
barplot(df$Certification, names.arg = rownames(df),horiz = TRUE, col="blue")    #horizontal bar graph


#Pie chart:
png(file = "pie1.png")

x <- c(8, 10, 42, 14)
y <- c("A", "B", "C", "D")
pie(x, label = y) 



x<-tapply(df$Certification, df$Salary, mean)
labels <- names(x)      #names() - to take the labels

png(filename='pie2.png')
pie(x, label=labels, main='Average salary by department')


#Boxplot: It shows how distributed the data is.
#It shows the minimum, maximum, median, first quartile and third quartile in the data set.
png(filename='boxplot1.png')
boxplot(df$Salary)



#Histogram: It represents the frequencies of values bucketed into ranges.
#It is similar to a bar chart, but groups the values into continuous ranges.
#The ranges of buckets are automatically set based on the data.
png(filename='hist1.png')
hist(df$Salary)

