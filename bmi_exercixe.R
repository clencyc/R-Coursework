# function to calculate BMI
calculate_bmi <- function(inches, pounds) {
  weight <- pounds * 0.753592
  height <- inches * 0.035
  bmi <- weight / height^2
  return(bmi)
}

calculate_bmi(72, 190)
# output = 1.226946


# using the general standards to categorize people
# according to their BMI
determine.weight.category <- function(inches, pounds) {
  weight <- pounds * 0.753592
  height <- inches * 0.035
  bmi <- weight / height^2
  
  if (bmi < 18.5) {
    print("Unnderweight")
  } else if(bmi < 24.9 & bmi >= 18.5) {
    print("Normal weight")
  } else if(bmi < 29.9 & bmi >= 25) {
    print("Overweight")
  } else if(bmi >= 30) {
    print("obese")
  }
}

determine.weight.category(72, 190)
#output = Normal weight

val <- seq(from=1, to=10, length.out=5)  
val

val <- seq(from=1, to=10, by=2)
val


val <- 1:50
val
