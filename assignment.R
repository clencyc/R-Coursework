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

harminic_result <- harmonic_mean(data)
cat("Harmonic Mean: ", harminic_result, "\n")

