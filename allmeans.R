
calculate_means <- function(values, weights = NULL) {
  
  # Mean Absolute deviation
  MAD_function <- function(y) {
    out <- sum(abs(y-mean(y)))/length(y)
  }

  
  # Weighted mean
  weighted_mean <- function(x, w) {
    formula <- (sum(x*w)) / sum(w)
  }
  
  # geometric mean
  geo_mean <- function(x) {
    val <- prod(x) ^ (1/length(x))
  }

  # harmonic mean
  HM_mean <- function(x) {
    val <- length(x) / sum(1/x)
  }
  
  # Calculate all means
  results <- list(
    "Mean Absolute Deviation (MAD)" = MAD_function(values),
    "Weighted Mean" = if (!is.null(weights)) weighted_mean(values, weights) else NA,
    "Geometric Mean" = geo_mean(values),
    "Harmonic Mean" = HM(values)
  )
  
  return(results)
}

# Example usage
values <- c(10, 3, 9, 13, 4, 5)
weights <- c(0.1, 0.3, 0.3, 0.2, 0.1)

results <- calculate_means(values, weights)
print(results)
