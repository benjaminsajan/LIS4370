A = matrix(c(2, 0, 1, 3), ncol = 2)
B = matrix(c(5, 2, 4, -1), ncol = 2)

A+B

A-B


diag(c(4, 1, 2, 3))

Q <- diag(c(3), nrow = 5, ncol = 5)
Q


Q[,1] <- c(3, 2, 2, 2, 2)
Q[1,] <- c(3, 1, 1, 1, 1)
Q
