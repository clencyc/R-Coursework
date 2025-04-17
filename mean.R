data <- rnorm(1000, mean=1, sd=5)
hist(data)

boxplot(data)

mean(data)
sd(data)

fx <- function(x) {
  val <- x^2 + (3*x^4)
  return(val)
}
fx(x=3)
fx(4)

l
# Mean Absolute deviation
MAD_function <- function(y) {
  out <- sum(abs(y-mean(y)))/length(y)
  return(out)
}
values <- c(10, 3, 9, 13, 4, 5)
MAD_function(y=values)


# Weighted mean
weighted_mean <- function(x, w) {
  formula <- (sum(x*w)) / sum(w)
  return(formula)
}
values <- c(3,5,6,7,8)
weights <- c(0.1, 0.3, 0.3, 0.2, 0.1)
weighted_mean(x=values, w=weights)


# geometric mean
geo_mean <- function(x) {
  val <- prod(x) ^ (1/length(x))
  return(val)
}
values <- c(3,5,6,7,8)
geo_mean(x=values)


# harmonic mean
HM <- function(x) {
  val <- length(x) / sum(1/x)
  return(val)
}

values <- c(3,5, 6, 7, 8)
HM(values)

# data normalization
data_norm <- function(x) {
  out <- (x - mean(x)) / sd(x)
  return(out)
}
normalize <- c(4, 5, 6, 7, 8)
data_norm(normalize)
