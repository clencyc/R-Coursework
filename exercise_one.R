
discount <- function(x) {
  val <- numeric(length(x))
  for (i in 1:length(x)) {
    if (x[i] < 50 & x[i] > 0) {
      val[i] <- 0
    } else if ((x[i] >= 50) & (x[i] <= 100)) {
      val[i] <- 0.05 * x[i]
    } else if (x[i] > 100) {
      val[i] <- 0.10 * x[i]
    } else{
      val[i] <- NA
    }
  }
  return (val)
}
discount(30)
discount(60)
discount(120)
discount(45)
discount(-100)

data <- c(30, 60, 120, 45, 85, 150, 25, 75)
discount_one <- function(data) {
  val <- numeric(length(x))
  for (v in length(x)) {
    if (x[v] <- 0) {
      
    }
  }
}
