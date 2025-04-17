

students <- c("John", "Cynthia", "Mercy", "Bryan", "Jude")
w <- c(69.1, 62.5, 74.3, 70.9, 96.6)
h <- c(1.81, 1.46, 1.69, 1.82, 1.74)

bmi.calc <- function(weight, height) {
  bmi <- weight / (height^2)
  
  return(bmi)
  
}

bmis <- mapply(bmi.calc, w, h)
bmis

data_matrix <- rbind(Weight = w, Height = h, BMI = round(bmis, 1))
colnames(data_matrix) <- students

print(data_matrix)

# variance of any vector
vect <- c(1,2,3,4,5)
var(vect)

fz <- function(x) {
  if (x<0) {
    return(x^2+2*x+3)
  } else if(x<2 && x>=0) {
    return(x+3)
  } else if(x>=2) {
    return(x^2+4*x-7)
  } else {
    return(x)
  }
}

fz_vec <- Vectorize(fz)

# Test with a vector
fz_vec(c(-3, 0, 1.5, 2, 4, 8))
