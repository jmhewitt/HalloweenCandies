# basic loading for datasets

#
# training data
#

# download and load from internet
train = read.csv('https://raw.githubusercontent.com/jmhewitt/HalloweenCandies/master/train.csv')

# OR, load the data if you have it on your computer
train = read.csv('train.csv')


#
# test data (predictors only, no cheating!)
#

# download and load from internet
test.predictors = read.csv('https://raw.githubusercontent.com/jmhewitt/HalloweenCandies/master/test.csv')

# OR, load the data if you have it on your computer
test.predictors = read.csv('test.csv')
