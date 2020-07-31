## Problem 1

N <- 10000
boxes <- vector(mode='numeric', length=10000)
for (n in 1:10000) {
  coupons <- c()
  repeat {
    coupons <- c(coupons, sample(1:10, 1))
    if (length(unique(coupons)) >= 10) {
      boxes[n] <- length(coupons)
      break
    }
  }
}

# (a)
mean(boxes==10)

# (b)
factorial(10)/(10^10)

# (c)
1 - mean(boxes<=20)

# (d)
mean(boxes < 29.3)

# (e)
mean(boxes)
# [1] 29.26094
sd(boxes)
# [1] 11.18639

# (f)
N <- 1000000
boxes <- vector(mode='numeric', length=N)
for (n in 1:N) {
  coupons <- c()
  repeat {
    coupons <- c(coupons, sample(1:20, 1))
    if (length(unique(coupons)) >= 20) {
      boxes[n] <- length(coupons)
      break
    }
  }
}

mean(boxes)
# [1] 71.93978
sd(boxes)
# [1] 23.76062

# A little more than twice, but less than triple.

## Problem 3

# (a)
N <- 10000
simulations <- vector(mode='numeric', length=N)
for (n in 1:N) {
  waited.time <- 0
  for (day in 1:20*12) {
    waited.time <- waited.time + runif(1)
  }
  simulations[n] <- waited.time
}

# (b)
hist(simulations)

# (c)
mean(simulations)
# [1] 9.99923
sd(simulations)
# [1] 1.2916

# (d)

N <- 1000000
simulations <- vector(mode='numeric', length=N)
for (n in 1:N) {
  waited.time <- 0
  for (day in 1:20*12) {
    waited.time <- waited.time + runif(1)
  }
  simulations[n] <- waited.time
}


hist(waited.time)
mean(waited.time)
sd()

# (e)
mean <- 0.5 * 20
# 10.0
std <- sqrt((1/12)*20)
# [1] 1.290994







