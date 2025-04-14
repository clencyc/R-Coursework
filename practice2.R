# creating vectors
marks <- c(1,2,3,4,5,6,6,7)
marks

student_marks <- seq(from=1, to=10, length.out=5)
student_marks

nums <- seq(from=1, to=10, by=2)
nums

# matrices
vec1 <- c(10, 20, 30, 40)
vec2 <- c(50, 60, 70, 80)
matx <- rbind(vec1, vec2)
matx

# harmonic mean
harm_mean<-function(x) {
  val <- length(x) / sum(1/x)
}

data <- c(2,4,5,6)
harmonic_result <- harm_mean(data)
harmonic_result

# geometric mean
geom_mean <- function(x) {
  val <- prod(x) ^ (1/(length(x)))
}
data <- c(12, 43, 12, 13)
geo_mean <- geom_mean(data)
geo_mean


# Graphical summaries
data <- rnorm(1000, mean=1, sd=5)
hist(data)

# mean absolute deviation
MAD_func <- function(x) {
  val < sum(abs(x-mean(x))) / length(x)
  return(val)
}

values <- c(1,3,4,5)
MAD_func(x=values)


# Generate data and compute probabilities
uniform <- runif(1000, -1, 1)
plot(density(uniform))


unif <- punif(0.25, -1, 1)
unif

unif2 <- qunif(0.625, -1, 1)
unif2


# Generate 1000 samples from a Binomial distribution with size=10 and probability=0.5
binomial <- rbinom(1000, 10, 0.5)
# Print the first few results (optional)
head(binomial)
# Frequency table of the binomial outcomes
table(binomial)
# Histogram with proper breaks from -0.5 to 10.5 so bins center on integers
hist(binomial, breaks = seq(-0.5, 10.5, 1))


hist(binomial, 
     breaks = seq(-0.5, 10.5, 1), 
     main = "Binomial Distribution", 
     xlab = "Number of Successes", 
     col = "steelblue", 
     border = "white", 
     freq = TRUE
     )

# uniform / normal random distributions
x <- runif(1000, 1, 1)
z <- rnorm(1000, 2, 3)
y <- 10+3*x+z
y

# poisson randoms
p <- rpois(1000, 10)
p
hist(p, seq(-0.5, max(p)+0.5, 1))


# r program that generates 1000 values from. pois(lambda=5), gamma(shape=2, scale=2), exponential(rate=3)

poiss1 <- rpois(1000, 5)
gamma1 <- rgamma(1000, 2, 2)
expon <- rexp(1000, 3)
poiss1
gamma1
expon
