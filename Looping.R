
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