a <- 15
b <- 20
c <- a + b
c

vals <- seq(from=1, to=10, length.out=5)
vals
nums <- seq(from=1, to=10, by=2)
nums

values <- 1:50
values
  
vecx <- c(2,8, 13, 15, 13, 6)
matx <- matrix(vecx, nrow=3, ncol=2)
matx

va

matxx <- matrix(vecx, nrow=3, ncol=2, byrow=T)
matxx

vec1 <- c(6, 8, 3, 5)
vec2 <- c(10,20,60,90)
vec1 / vec2

matvec <- cbind(vec1, vec2)
matvec

# rbind vector

matvec2 <- rbind(vec1, vec2)
matvec2

# Dataframe datatype
df <- data.frame(
  Names = c("Mark", "Sam", "Marg", "Paul"),
  Age = c(25, 16, 19, 20),
  Gender = c("Male", "Male", "Female", "Female"),
  Score = c(72, 93, 81, 60)
)
df
df.plot()