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

