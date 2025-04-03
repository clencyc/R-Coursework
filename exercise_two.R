marks <- c(90,20,60,50,80,43,25,39,66)
matmarks <- matrix(marks, nrow=3, ncol=3, byrow=T)
colnames(matmarks) <- c("subject 1", "subject2", "subject3")
rownames(matmarks) <- c("student1", "student2", "student3")
matmarks
apply(matmarks, 1, mean)
apply(matmarks, 2, mean)
# highest score in each subject
apply(matmarks, 2, max)