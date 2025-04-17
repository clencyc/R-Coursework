# function to calculate BMI
calculate_bmi <- function(inches, pounds) {
  weight <- pounds * 0.753592
  height <- inches * 0.035
  bmi <- weight / (height^2)
  return(bmi)
}

calculate_bmi(72, 190)
# output = 1.226946


# using the general standards to categorize people
# according to their BMI
determine.weight.category <- function(inches, pounds) {
  bmi <- calculate_bmi(inches, pounds)
  
  if (bmi < 18.5) {
    category <- "Underweight"
  } else if(bmi < 24.9 & bmi >= 18.5) {
    category <- "Normal weight"
  } else if(bmi < 29.9 & bmi >= 25) {
    category <- "Overweight"
  } else if(bmi >= 30) {
    category <- "obese"
  }
  
  return(category)
}

determine.weight.category(72, 190)
#output = Normal weight

val <- seq(from=1, to=10, length.out=5)  
val

val <- seq(from=1, to=10, by=2)
val


val <- 1:50
val
