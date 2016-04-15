12
12
#changing directory
setwd("~/Desktop/software-carpentry-2016/data-files/r-lesson/data")
list.files()
read.csv('inflammation-01.csv' , header = FALSE)

weight_kg <- 55
weight_kg}
#convert weights to pounds
weight_kg*2.2
weight_kg <- 57.5
weight_kg

#calculate weight in pounds, save to variable weight_lb
weight_lb <- weight_kg * 2.2
weight_lb


#raptor weight increases to 100
weight_kg <- 100
weight_kg
weight_lb

#import data, save to variable.dat.
dat <- read.csv('inflammation-01.csv' , header = FALSE)
dat
class(dat)
dim(dat)
dat[1,1]
dat[30,20]
dat[1:4 , 1:10]
dat[5:10, 1:10]
#specific rows and columns
dat[c(3,8,37,56), c(10,14,29)]
#all values out of 5th row
dat[5,]
dat[,16]

raptor_1 <- dat[1,]
max (raptor_1)
min (raptor_1)

max (dat[2,])

mean(dat[,7])
median(dat[,7])
sd(dat[,7])

?apply
#average inflammation ofe each raptor over the whole time period
avg_raptor_inflammation = apply(dat, 1, mean)
avg_raptor_inflammation

avg_day_inflammation <- apply (dat, 2 , mean)
avg_day_inflammation

animal <- c("m", "o", "n", "k", "e", "y")
# first three characters
animal[1:3]
#last three characters
animal[4:6]
animal[4:1]
animal[-1]
animal[-4]
animal[-1:-4]
animal[5, 2:3]
animal[(-1:-4), (-5), (2:3)]
animal
animal[c(5 , 2, 3)]
max(dat[5, 3:7])

plot(avg_day_inflammation)

max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)

min_day_inflammation <- ap
plot(min_day_inflammation)

sd_day_inflammation <- apply(dat, 2, sd)
plot(sd_day_inflammation)

str(read.csv)
temp <-67
#fahrenheit to Kelvin:
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}
    
    fahr_to_kelvin(67)
    
fahr_to_kelvin <- function (temp) {
  kelvin <- ((temp - 32) * (5/9)) +273.15
  return(kelvin)
}

fahr_to_kelvin(67)
fahr_to_kelvin(temp)

kelvin_to_celsius <- function (temp) {
  celsius <- temp - 273.15
  return(celsius)
}
kelvin_to_celsius(0)

fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

fahr_to_celsius(32.0)

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

analyze("inflammation-01.csv")
analyze("inflammation-02.csv")

best_practice <- c("Let", "the" , "computer")

len <- 0
vowels <- c("a","e", "i", "o", "u")

for(v in vowels){
  print(len)
  len <- len+1
}
len
v
letter <- "z"

for(letter in c("a", "b","c")){t(letter)
}eq(3)

seq(3)
seq(1,2,3)
seq(3)

print_N <- function(natural_number){
  #function prints natural numbers
  #input is a number
  container_of_numbers <- seq(natural_number)
  for(x in container_of_numbers){
    print(x)
  }
  
}

print_N(3)
print_N(10)

2^4

expo <- function(base, exponent){
  tot <- 1
  
  #accounts for exponent=0. Don't worry about this for now
  for(i in 1:exponent){
    tot <- tot * base
  }
  
  return(tot)
}

expo(2,2)

#loop through files analysis
list.files()
Sys.glob("*.csv")
Sys.glob("i.csv")
  

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

analyze_all <- function(pattern) {
  # Runs the function analyze for each file in the current working directory
  # that contains the given pattern.
  filenames <- list.files(path = "data", pattern = pattern, full.names = TRUE)
  for (f in filenames) {
    analyze(f)
  }
}

analyze("data/inflammation-01.csv")
list.files()
setwd("~/Desktop/software-carpentry-2016/data-files/r-lesson/")

pdf("inflammation-01.pdf")
analyze("data/inlammation-01.csv")

setwd("~/Desktop/software-carpentry-2016/data-files/r-lesson/")
pdf("inflammation-01.pdf")
analyze("data/inflammation-01.csv")
dev.off()

num <- 102
if (num >100){
  print("greater")
}else{
  print("not greater")
}
print("done")

num > 100

num  < 100

num <- 102
if (num > 100) {
  print("num is greater than 100")
}

sign <- function(num) {
  if (num > 0) {
    return(1)
  } else if (num == 0) {
    return(0)
  } else {
    return(-1)
  }
}

sign(-3)
sign(0)
  
  
if (1 > 0 & -1 > 0) {
  print ("both parts are true")
} else {
  print("at lest one part is not true")
}

if (1 > 0 | -1 > 0) {
  print ("at least one part is true")
} else {
  print("neither part is true")
}





  

  