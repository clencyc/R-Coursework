# write an R function to implement a mathematical function

fx<- function(x) {
  if (x > 0 ) {
    return (x ^ 2)
  } else {
    return (abs(x))
  }
}
fx(x=3)

# demostrating if-else-if-else statement

fy <- function(x) {
  if (x <= 0) {
    return (1)
  } else if (x > 0 & x <= 1) {
    return (x^2)
  } else if (x >= 2 & x < 1) {
    return (x^3)
  } else if (x >= 3 & x < 2) {
    return (x^4)
  } else {
    return (x^5)
  }
}
fy(x=0.4)
fy(x=5)
fy(x=3)
