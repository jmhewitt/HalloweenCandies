# create test and training sets

# load full data
dat = read.csv('candy-data.csv')

# make data generation reproducible
set.seed(2018)

# randomly create test data
test.inds = sample(x = 1:nrow(dat), size = 5)

# extract training data
training.data = dat[-test.inds,]

# extract and format test data
test.predictors = dat[test.inds,]
test.answers = test.predictors$winpercent

# remove answers from training data
test.predictors$winpercent = NULL

# save datasets
write.csv(training.data, file = 'train.csv', quote = FALSE, row.names = FALSE)
write.csv(test.predictors, file = 'test.csv', quote = FALSE, row.names = FALSE)
write.csv(test.answers, file = 'answers.csv', quote = FALSE, row.names = FALSE)