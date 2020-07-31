#Problem 1

F <- function(y) {(1/48)*(y^2 - (y^3/18))}
f <- function(y) {(y/24)*(1-(y/12))}
plot(F, xlim=c(0,12), ylim=c(0,1), ylab="F(y)", xlab="y", main="Cumulative Distribution Funcion")
cum <- integrate(problem, lower = 0, upper = 12)
plot(ecdf(problem(0)))
problem(12)
plot(problem(12))
integrate(f, lower = 4, upper = 8)
1 - 0.4814815

0 < y < 12
f <- ((1/48)*(y^2 - ((y^3)/18))) 
y 
plot(ecdf(f))

e <- function(y) {(y/24)*(1-(y/12))*y^2}
d <- function(y) {(y/24)*(1-(y/12))*y}
g <- function(y) {(y/24)*(1-(y/12))*(12-y)}
integrate(d, lower = 0, upper = 6)
integrate(g, lower = 6, upper = 12)


#Problem 3
#part a
1 - pnorm(135, 137.2, 1.6)

#part b
dbinom(8, 10, 0.9154) + dbinom(9, 10, 0.9154) + dbinom(10, 10, 0.9154)
1 - pbinom(8, 10, 0.9154)
#part c
qnorm(.05)
(137.2 - 135)/ 1.644854

#Problem 4
#part b
plnorm(250, 3.5, 1.2) - plnorm(50, 3.5, 1.2)
dlnorm(250, 3.5, 1.2)

#part c
plnorm(68.03, 3.5, 1.2)

#Problem 5
#part a

0.05 + 0.05 + 0.1 #X=20
0.05 + 0.10 + 0.35 #X=25
0 + 0.20 + 0.10 #X=30
0.05 + 0.05 + 0 #Y=20
0.05 + 0.10 + 0.20 #Y=25
0.10 + 0.35 + 0.10 #Y=30
#part b
0.05 + 0.05 + 0.05 + 0.10
#part c
0.05/0.1 #For X=20
0.05/0.1 #For X=25
0/0.1 #For X=30
#part d
20*0.2 + 25*0.5 + 30*0.3 #expected value of X
20*0.1 + 25*0.35 + 30*0.55 #expected value of Y
25.5 + 27.25 #expected value of X and Y
#part e
27.25 - 25.5

#Problem 7
1*0.4 + 2*0.3 + 3*0.2 + 4*0.1
(1^2)*0.4 + (2^2)*0.3 + (3^2)*0.2 + (4^2)*0.1

#Problem 8
airpollution <- data.frame(airpollution)
attach(airpollution)
#part a
qqnorm(Solar)
qqline(Solar)
#part b
shapiro.test(Solar)

#Problem 9
14 * 13 #mean
sqrt(14) * 2 #Sd

pnorm(192, 182, 7.483315)


#Problem 10
(180 - 182)/ sqrt(76)
qnorm(0.2294157)
1-0.7407725

pnorm(180, 182, sqrt(76))

