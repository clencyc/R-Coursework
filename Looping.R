func_loop <- function(x){
  out <- numeric(length(x))
  for (i in 1:length(x)) {
    out[i] <- x[i] ^ 2 + 4
  }
  return(out)
}
data <- c(6,9,13,18)

func_loop(x  = data)

# R code that draws 50 random samples and computes the mean for each of the samples drawn
f_means <- function(x) {
  means <- numeric(50)
  for (i in 1:50) {
    x_sample <- sample(x, size = 5, replace = TRUE)
    means[i] <- mean(x_sample)
  }
  return(means)
}

vals <- c(6,5,2,1,8,15,13,23,18,20)
f_means(x=vals)

# while loops
while(TRUE) {
  print("Hi")
}

x <- 1
while(x <= 10) {
  print(x)
  x <- x + 1
}

x <- 0
while(x <= 6) {
  x <- x + 1
  if (x == 3) {
    next
  }
  print(x)
}


sample_mean <- 0
count <- 0

while (sample_mean <= 1.5) {
  x <- rnorm(100, mean = 1, sd = 1)
  sample_mean <- mean(x)
  count <- count + 1
  cat("Try:", count, "Mean:", sample_mean, "\n")
}

#a company's delivery times follow a normal 
#distribution with a mean of 45 minutes and 
#a starndard dev of 5 minutes: i) What is the 
#probability that a randomly selected delivery 
#takes less than 40 minutes? ii)What is the 
#probability that a delivery takes between 40 and 50 minutes?

pnormal_40 <- pnorm(40, 45, 5)
pnormal_4050 <- pnorm(50, 45, 5) - pnorm(40, 45, 5)
pnormal_40
pnormal_4050


# using the apply family of functions
# Create a 3x3 matrix
mat <- matrix(1:9, ncol = 3)
mat

mat2 <- matrix(1:10, ncol = 4)
mat2
# Sum of each row
apply(mat, 1, sum)   # 1 = rows

# Mean of each column
apply(mat, 2, mean)  # 2 = columns
  
vec1 <- c(1,2,3,4)
vec2 <- c(5,6,7,8)
vec3 <- rbind(vec1, vec2)
vec3

# List of numeric vectors
mylist <- list(a = 1:5, b = 6:10)
mylist

# Get the mean of each list element
lapply(mylist, mean)
sapply(mylist, mean)

weights <- c(60, 65, 70, 80, 85)
gender <- c("F", "F", "M", "M", "M")

# Mean weight by gender
tapply(weights, gender, mean)

marks <- c(34, 53, 14, 13, 45, 65)
gender <- c("F", "M", "F", "M", "F", "M")
tapply(marks, gender, mean)
