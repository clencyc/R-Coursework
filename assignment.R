# Consider the following data 6,8,15,2,9,8,15
# write an R program to compute:
#       a) The harmonic mean
#       b) Wite an R program to compute the geometric mean

data <- c(6,8,15,2,9,8,15)

harmonic_mean <- function(x) {
  n <- length(x)
  sum_of_reciprocals <- sum(1 / x)
  harmonic_mean <- n / sum_of_reciprocals
  return(harmonic_mean)
}

harmonic_result <- harmonic_mean(data)
cat("Harmonic Mean: ", harmonic_result, "\n")

geometric_mean <- function(x) {
  n <- length(x)
  product <- prod(x)
  geometric_mean <- product^(1 / n)
  return(geometric_mean)
}

# Compute geometric mean
geometric_result <- geometric_mean(data)
cat("Geometric Mean:", geometric_result, "\n")
