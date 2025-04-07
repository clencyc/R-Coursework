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



