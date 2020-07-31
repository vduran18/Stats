###With interactions 
attach(kuiper)
lm.interaction = lm(log(Price) ~ Mileage+Liter+Doors+Cruise+Sound+Leather+Make, data = kuiper)
summary(lm.interaction)
##Log on price
lm.priceint = lm(log(Price) ~ Mileage*Liter, data = kuiper)
summary(lm.priceint) ##Better with log

###USE THIS ONE
lm.inter = lm(log(Price) ~ Mileage*Liter + Doors + Cruise + Sound + Leather, data = kuiper)
summary(lm.inter)
par(mfrow=c(2,2))
plot(lm.inter)
shapiro.test(lm.inter$residuals)
par(mfrow=c(1,1))
interaction.plot(kuiper$Mileage, kuiper$Liter, kuiper$Price)

lm.inter1 = lm(Price ~ Mileage*Liter + Doors + Cruise + Sound + Leather, data = kuiper)
summary(lm.inter1)
View(data1)

### USE THIS ONE 
lm.model = lm(Price ~ Mileage*Liter + Doors + Cruise + Sound + Leather + Type_Convertible + Make_Cadillac, data = data1)
summary(lm.model)
lm.model
par(mfrow=c(1,1))
plot(lm.model, which = 1)
plot(lm.model, which = 2)
lm.model1 = lm(log(Price) ~ Mileage*Liter + Doors + Cruise + Sound + Leather + Type_Convertible + Make_Cadillac, data = data1)
summary(lm.model1)

sqrt(mean(lm.model1$residuals^2))
hell = lm.model1$residuals^2
sum(hell)
mean(sum(hell))
lm.model1
plot(lm.model1)
library(sjPlot)
library(sjmisc)
library(ggplot2)
theme_set(theme_sjplot())
plot_model(lm.inter, type = 'pred', terms = c('Mileage', 'Liter'))
plot_model(lm.model1, type = 'pred', terms = c('Mileage', 'Liter'))
Type_Convertible
require(car)
coplot(Price~Mileage|Liter, panel = panel.car, col = 'red', rows = 1, data = kuiper)

###Try using categorical variable
##Model
data = dummy_cols(kuiper,select_columns = c('Type'))
data
data1 = dummy_cols(data,select_columns = c('Make'))
data1
size(Trim)
length(unique(Model))
##Try a simple reg
lm.best = lm(Price ~ Mileage + Liter, data = kuiper) ##Better without log
summary(lm.best)
lm.log = lm(log(Price) ~ Mileage + Liter, data = kuiper)
summary(lm.log)
plot(Price, Model)
library(ggplot2);
ggplot(data, aes(as.factor(Model), Price)) + 
  geom_point() + 
  labs(y = "Price", x = "Model");

lm.ex = lm(Price ~ Mileage + Liter + Doors + Cruise + Sound + Leather, data = kuiper)
sqrt(mean(best$residuals^2))
best = lm(log(Price) ~ Mileage + Liter + Doors + Cruise + Sound + Leather + Make_Buick + Make_Cadillac + Make_Chevrolet + Make_Pontiac + Make_SAAB, data = data1)
predict(best, data.frame(Mileage = 23335, Liter=3.4, Doors =2, Cruise = 0, Sound = 1, Leather = 1, Make_Cadillac = 0, Make_Buick = 0, Make_Chevrolet = 0, Make_Pontiac = 1, Make_SAAB = 0))
e^(10.78178)
summary(best)
48135.72