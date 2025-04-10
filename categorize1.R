fx <- function(x) {
  val <- numeric(length(x))
  for (i in 1:length(x)) {
    if ((x[i] >= 0) & (x[i] < 0.5)) {
      val[i] <- 1
    } else if ((x[i] > 0.5) & (x[i] < 1)) {
      val[i] <- -1
    } else {
      val[i] <- 0
    }
  }
  return(val)
}

x <- c(0.77, 1.1, -0.17, -0.48, -0.45, 0.32, 0.18, 0.87, 0.56, 0.78, 0.50)
fx(x)

# probability distributions
# Generating data
vals <- rnorm(n=100, mean=10, sd=2)
vals

# uniform and normal distributions
x <- runif(n=1000, min=-1, max=1)
z <- rnorm(n=1000, mean=2, sd=3)
y <- 10 + 3*x + z
y

# binomial distribution
x <- rbinom(n=500, size=20, prob=0.7)
x

# poison distribution
y <- rpois(n,)


binom <- dbinom(x=10, size=50, prob=0.2)
binom

# computed using pdf
sum(dbinom(x=15:50, size=50, prob=0.2))

# computing using cdf
1 - pbinom(q=14, size=50, prob=0.2)



pnorm(q=50, mean=45, sd=5) - pnorm(q=40, mean=45, sd=5)

dnorm()