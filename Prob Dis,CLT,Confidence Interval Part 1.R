"Q1: Calculate the probability of MPG of Cars for the below cases.
MPG <- Cars$MPG
a.	P(MPG>38)
b.	P(MPG<40)
c.	P (20<MPG<50)	
"

#Packages
install.packages("readr")
library(readr)

#Read data into R
cars <- read.csv(file.choose())

attach(cars)

MPG <- cars$MPG

"a."
sum(MPG>38)
length(cars$MPG)

probability <- (sum(MPG>38) / length(cars$MPG))*100 #40.74
probability

"b."
sum(MPG<40)
length(cars$MPG)

probability <- (sum(MPG<40) / length(cars$MPG))*100 #75.30
probability

"c."
a = sum(20<MPG)
b = sum(50>MPG)
A = b-a
A
length(cars$MPG)

probability <- (A / length(cars$MPG))*100 #2.46
probability

"Q2) Check whether the data follows normal distribution
a)	Check whether the MPG of Cars follows Normal Distribution Dataset: Cars.csv
b)	Check Whether the Adipose Tissue (AT) and Waist Circumference (Waist) from wc-at data set follows Normal Distribution
Dataset: wc-at.csv"

#a)
# Normal Quantile-Quantile Plot
qqnorm(MPG)
qqline(MPG)
#Yes MPG of Cars follows Normal Distribution

#Read data into R
wc <- read.csv(file.choose())

attach(wc)

#b)
# Normal Quantile-Quantile Plot
qqnorm(Waist)
qqline(Waist)
# Waist Circumference (Waist) from wc-at data set not follows Normal Distribution.
qqnorm(AT)
qqline(AT)
# Adipose Tissue (AT) from wc-at data set follows Normal Distribution.

"Q3) Calculate the Z scores of 90% confidence interval,94% confidence interval, 
60% confidence interval"

"Z scores of 90% confidence interval"

# z-distribution
"Z scores of 90% confidence interval"
qnorm(0.95) # given probability, find the Z value , 1.644854

"Z scores of 94% confidence interval"
qnorm(0.97) # given probability, find the Z value , 1.880

"Z scores of 60% confidence interval"
qnorm(0.80) # given probability, find the Z value , 0.841

"Q4) Calculate the t scores of 95% confidence interval, 96% confidence interval, 
99% confidence interval for sample size of 25"


# t-distribution
#pt(t-value,sample size)
#sample size = 25, n-1 = 24
"t scores of 95% confidence interval"
qt(0.975, 24) # 2.063
"t scores of 96% confidence interval"
qt(0.98, 24) # 2.171
"t scores of 99% confidence interval"
qt(0.995, 24) # 2.796

"Q5) A Government company claims that an average light bulb lasts 270 days. 
A researcher randomly selects 18 bulbs for testing. 
The sampled bulbs last an average of 260 days, 
with a standard deviation of 90 days. If the CEO's claim were true, 
what is the probability that 18 randomly selected bulbs would have 
an average life of no more than 260 days"

# t-distribution
#pt(t-value,sample size)
#sample size (n) = 18, n-1 = 17
t = (260-270)/(90/sqrt(18))
pt(t, 17) # given a value, find the probability = 0.321 = 32%

#32% of probability that 18 randomly selected bulbs would have an average 
#life of no more than 260 days


"Q6) The time required for servicing transmissions is normally distributed with ??? = 45 minutes and ??? = 8 minutes. 
The service manager plans to have work begin on the transmission of a customer's car 10 minutes after the car is 
dropped off and the customer is told that the car will be ready within 1 hour from drop-off. What is the probability 
that the service manager cannot meet his commitment?"

# z-distribution
#pnorm(x,miu,sigma)
# right side portion
1-pnorm(60,55,8) # given a value, find the probability, pnorm is probability of a normal distributed data
#0.265

"Q7) The current age (in years) of 400 clerical employees at an insurance claims processing center is normally distributed with mean ??? = 38 and Standard deviation
??? =6. For each statement below, please specify True/False. If false, briefly explain why.
A.	More employees at the processing center are older than 44 than between 38 and 44.
B.	A training program for employees under the age of 30 at the center would be expected to attract about 36 employees.
"
# z-distribution
#pnorm(x,miu,sigma)
"A."
#probability for 44
pnorm(44,38,6) # given a value, find the probability, pnorm is probability of a normal distributed data
#84.13 %
#=> People above 44 age = 100 - 84.13 =  15.87% , 
#=>15.87*400/100  ???  63  out of 400
#probability for 38  
pnorm(38,38,6) #50%
#Hence People between 38 & 44  age = 84.13 - 50 = 34.13 %
#=>34.13*400/100  ???  137 out of 400
#Hence More employees at the processing center are older than 44 than between 38 and 44. is FALSE
"B."
#Probability for 30
pnorm(30,38,6) #9.12%
#=>9.15*400/100   ??? 36 out of 400
#Hence A training program for employees under the age of 30 at the center would be expected to attract about 36 employees - TRUE

"Q9) Let X ~ N(100, 20^2) its (100, 20 square).Find two values, a and b, symmetric about the mean, such that the probability of the random variable taking a value between them is 0.99."

#X ~ N(100, 20^2)
#?? = 100, ?? = 20
#Since we need to find out the values of a and b, which are symmetric about the mean, such that the probability of random variable taking a value between them is 0.99, 
#we have to work out in reverse order. The Probability of getting value between a  and b should be 0.99. So the Probability of going wrong, or the Probability outside the  
#a and b area is 0.01 (ie. 1-0.99).
"The Probability towards left from a = -0.005 (ie. 0.01/2).The Probability towards right from b = +0.005 (ie. 0.01/2)."
#So since we have the probabilities of a and b, we need to calculate X, the random variable at a and b which has got these probabilities.
#By finding the Standard Normal Variable Z (Z Value), we can calculate the X values.

#For Probability 0.005 the Z Value is -2.57 (from Z Table)
qnorm(0.005) #-2.57

#so, the range will become
'Z * ?? + ?? = X'
# for a = -0.005
#Z(-0.005)*20+100 
a = -(-2.57)*20+100 #151.4
#Z(+0.005)*20+100 
b = (-2.57)*20+100 #48.6

#So, D option is the Answer

