#**Basic Stat Functions**
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Blackbeard')

mean(limbs)

barplot(limbs)
abline (h=mean(limbs)) #compare bars to mean
abline(h=median(limbs))#good for outragous values that skew the mean
dev = sd(limbs) #sd gives range of typical values for a data set
abline (h=mean(limbs)+dev)
abline (h=mean(limbs)-dev)


#**Factors**
pets <- c('kitten', 'puppy', 'kitten', 'snail', 'fish', 'puppy') #note all pets
pet.type <- factor(pets) #categorise the pets
print(pets)
print(pet.type) #factor variable shows factor levels - values are not strings: they are integer refs to a factor level

as.integer(pet.type)
levels(pet.type) #get factor levels

#Plots with factors
ages <- c(5, 3, 2, 6, 1, 8)
weights <- c(100, 500, 300, 400, 150, 350)
plot(ages, weights, pch=as.integer(pet.type)) #use factor to label plots
legend("bottomright", levels(pet.type), pch=1:3)


#**Data frames**
#Tying variable together in a single structure
owners <- c('Bob', 'Sarah', 'Ruskin', 'George', 'Claire', 'Sarah')
families <- data.frame(pet.type, owners,weights, ages)
#get columns
families[[2]]
families[["ages"]]
families$ages

#Load data frames
setwd("data/")
list.files()
#for csv files
read.csv("HairEyeColor.csv") #load csv contents into data frame
#for txt files
student_ages <- read.table("Student_Age.txt", header=TRUE)

#Merge data frames
merge(x=families, y=student_ages, by.x="owners", by.y="Student")

