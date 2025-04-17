

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

# the lifetime s of a certain type of bulb is gamma distributed with a shape 3 months and a scale 1.5 months
# write a R function that: 1. generates 1000 rnd values of x
# computes the range of x
# repeats 1 and 2 1000 times
# returns the average from 2 above

gammafunc <- function(r_sim = 1000, n_rand = 1000, shape=3, scale=1.5) {
  ranges <- numeric(r_sim)
  for(i in 1:r_sim) {
    x <- rgamma(1000, 3, 1.5)
    ranges[i] <- diff(range(x))
  }
  return(mean(ranges))
}
gammafunc()


# a b/s launches a campaign with a 0% response rate. if the campaign targets 50 customers,
# what is the prob that 10 will respond?

binom <- dbinom(10, 50, 0.2)
binom
hist(binom, seq(-0.5, 10.5, 1))

#prob that at least 15 customers will respond 
sum(dbinom(x=15:50, size=50, prob = 0.2)) # this works on pdf
# or
1 - pbinom(14,50,0.2) # this works with cdf

# function to calculate poisson distribution
pois <- function(x, lambda) {
  prob <- (exp(-lambda) * lambda^2) / factorial(x)

  return(prob)
}

pois(2, 2)

