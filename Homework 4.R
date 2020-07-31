##Homework 4 

###Problem 1
teen = matrix(c(0,0.7,0,0,0.5,0,0,0,0.2,0.1,1,0,0.3,0.2,0,1), nrow = 4)
teen
A = matrix(c(0, 0.7, 0.5, 0), nrow = 2)
A
#Part c 
solve(diag(2) - A)%*%matrix(c(1,1),nrow=2)
#Part d
C = matrix(c(0.2, 0.1, 0.3, 0.2), nrow = 2)
solve(diag(2) - A)%*%C

###Problem 2
D = matrix(c(0,0.3,0,0,0,0,0,0.7,0.3,0,0,0,0,0,0.7,0.3,0,0,0,0,0,0.7,0.3,0,0,0,0,0,0.7,0.3,
             1,0,0,0,0,0.7), nrow = 6)
D
DT_I = t(D) - diag(6)
SSD = qr.solve(rbind(matrix(c(1,1,1,1,1,1),ncol = 6),DT_I),
               matrix(c(1,0,0,0,0,0,0),nrow = 7),tol = 1e-7)
SSD

1/0.05660377
