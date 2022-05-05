A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

A
#Inverse of a Matrix A is adjoint matrix A divided by determinant of A

inverse.matrix <- function(a){
  b <- (t(a)) / det(a)
  print(b)
}

inverse.matrix(A)

#Determinant of A is 0, dividing by 0 to find the inverse is undefined

inverse.matrix(B)

