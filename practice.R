# building a simple calculator in R
# 1. Start with asking for user input: On the numbers and operation they want to 
# be done on the number
# 2. Read the input and perform the operation specified.
# 3. A control statement will be used in this question.

num1 <- as.numeric(readline("Enter first number: "))  
num2 <- as.numeric(readline("Enter second number: "))  
op <- readline("Enter operator (+, -, *, /): ")  

result <- switch(op,  
                 "+" = num1 + num2,  
                 "-" = num1 - num2,  
                 "*" = num1 * num2,  
                 "/" = num1 / num2,  
                 "Invalid operator")  
print(paste("Result:", result))