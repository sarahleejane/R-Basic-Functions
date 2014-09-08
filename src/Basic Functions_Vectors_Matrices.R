#create project
#setwd("C:/Users/user/Documents/DataScience/")
#library(ProjectTemplate)
#create.project("R.Basic.Functions")
#setwd("C:/Users/user/Documents/DataScience/R.Basic.Functions/")

#***Super basic functions***
sum(2,3,4)
rep("Ruskin", times=3)
sqrt(16)

help(sum)
example(min)
list.files()

setwd("C:/Users/user/Documents/DataScience/R.Basic.Functions/src/")
source("parrot example1.R")

#**Super basic vector examples**
#A vector is a list of values
#C function COMBINES a list of values/strings - must all be same mode (type)
c(1,2,3)
c('a','b','c')
c(TRUE, FALSE)

c(1:5) #sequence vector - same as:
seq(1,5)
seq(1,5,0.1)

phrase <- c("i", "love", "muffins")
phrase[3]
phrase[2] <- "adore" 
phrase[5] <- "mmmmm"
phrase[c(3,5)]
phrase[(3:5)]

#Assign names to vectors
ranks <- c(1:3)
names(ranks) <- c("first", "second", "third") 
ranks["first"]

#**Barplot of vector**
#Barplot draws bar chart of vector values
barplot(ranks) #names appear on plot if assigned
barplot(1:100)

#**Vector maths**
a <- c(1,2,3)
a + 1 #adds 1 to each value in vector - same for /, * etc
sin(a)

b <- c(10,20,30)
a+b #adds value per vector position

a==c(1,3,3) #Equality per position
a==1 #Equality for each value

#**Scatter plot of vector**
x <- seq(1,20,0.1)
y <- sin(x)
plot(x,y)

#**Dealing with NA**
a <- c(1,2,3,NA,5)
sum(a, na.rm = TRUE) #NA removed from vector before calculation

#**Matrices**
#2D array
matrix(0,2,5) #values 0, 2 rows, 5 columns
a <- 1:10
matrix(a,2,5)
dim(a) <- c(2,5) #could equally assign new dimensions to vector to get matrix
a[2,2] #to retrieve values

a[2,] #entire row
a[,1:2] #entire cols

#**Matrix plots**
beach.elevation <- matrix(1,5,5)
beach.elevation[3,3] <- 0
contour(beach.elevation) #cool contour plot
persp(beach.elevation) #perspective plot
persp(beach.elevation, expand = 0.4) #so our highest value isn't right at top

contour(volcano) #uses R sample set
persp(volcano, expand = 0.2)
image(volcano) #heat map



