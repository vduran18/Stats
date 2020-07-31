1 - pbinom(10,20,0.7)
pbinom(10,20,0.7) - pbinom(5,20,0.7)
20*0.7
sqrt(20*0.7*0.3)
pbinom(10,20,0.7) - pbinom(1,20,0.7)
pbinom(18,25,0.5) - pbinom(6,25,0.5)
pbinom(18,25,0.8) - pbinom(6,25,0.8)
pbinom(7,25,0.5) + (1-pbinom(17,25,0.5))
pbinom(17,25,0.6) - pbinom(7,25,0.6)
pbinom(17,25,0.8) - pbinom(7,25,0.8)
pbinom(6,25,0.5) + (1-pbinom(18,25,0.5))
pbinom(5,25,0.5) + (1-pbinom(19,25,0.5))
dbinom(1,400,0.005)
pbinom(3,400,0.005)

passengers <- function(t){
  profit <- NULL
  for(i in 1:10000) {
    x <- rbinom(1,t,0.85)
    B <- max(x-120,0)
    profit[i] <- 250*t - 500*B
  }
  return(profit)
}
set.seed(1234)
t <- 140:150
avg <- numeric(0)
for (i in 1:length(t)){
  avg[i] <- mean(passengers(t[i]))
  print(sprintf("The average profit for t=%g is %.2f", t[i], avg[i]))
}
sprintf("The largest average profit of %.2f is for t=%g", max(avg),t[which.max(avg)])



(36*(1/35)+ 49*(1/35)+64*(2/35)+81*(3/35)+100*(4/35)+121*(4/35)+144*(5/35)+169*(4/35) +196*(4/25)+225*(3/35)+256*(2/35)+289*(1/35)+324*(1/35)) 


((6-12)^2*(1/35)+(7-12)^2*(1/35)+(8-12)^2*(2/35)+(9-12)^2*(3/35)+(10-12)^2*(4/35)+(11-12)^2*(4/35)+(12-12)^2*(5/35)+(13-12)^2*(4/35)+(14-12)^2*(4/25)+(15-12)^2*(3/35)+(16-12)^2*(2/35)+(17-12)^2*(1/35)+(18-12)^2*(1/35)) 





passengers <- function(t){
  profit <- NULL
  for(i in 1:10000) {
    x <- rbinom(1,t,0.85)
    B <- max(x-120,0)
    profit[i] <- 250*t - 500*B
  }
  return(profit)
}

set.seed(12345) #set random seed to reproduce results
t <- 140:150
avg <- numeric(0)
for (i in 1:length(t)){
  avg[i] <- mean(passengers(t[i]))
  cat("The average profit for t=", t[i], "is", avg[i], "\n")
}
cat("The largest average profit of", max(avg), "is for t=", t[which.max(avg)], "\n")