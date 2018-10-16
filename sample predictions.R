#### Sample Predictions #####

load('test.csv')
training.data <- read.csv('train.csv')

### Possible model
lmOut <- lm(winpercent~sugarpercent + pricepercent, data = training.data)

summary(lmOut)

results <- predict(lmOut, test.predictors)

results




#   E-mail your final test.predictors results to csustatalliance@gmail.com with everyone's name in the group.



