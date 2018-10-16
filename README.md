Overview
========

It's fall, so let's get festive AND creative at this meeting. Let's take a lighthearted look at some data about peoples' favorite Halloween candies. We would like you to train a model that can predict which candies people will prefer. This repository contains training data as well as predictor variables for a test dataset. The repository does not contain the answers. The best predictions (as measured by MSE) will receive simple prizes. The best visualizations of the training data will also receive simple prizes.

We have also provided some sample R scripts you can use to get started.

-   `load_data.R` will load data
-   `visualizations.R` shows some interesting visualizatons you can think about, to get started.
-   `sample predictions.R` shows an example of how we would like you to build predictions.

Good luck and have fun!!

The data
========

train.csv
---------

Use this data to train a model to predict `winpercent`. Alternatively, try to come up with the most interesting or informative visualization of this data.

``` r
head(read.csv('train.csv'))
```

    ##   competitorname chocolate fruity caramel peanutyalmondy nougat
    ## 1      100 Grand         1      0       1              0      0
    ## 2   3 Musketeers         1      0       0              0      1
    ## 3       One dime         0      0       0              0      0
    ## 4    One quarter         0      0       0              0      0
    ## 5      Air Heads         0      1       0              0      0
    ## 6      Baby Ruth         1      0       1              1      1
    ##   crispedricewafer hard bar pluribus sugarpercent pricepercent winpercent
    ## 1                1    0   1        0        0.732        0.860   66.97173
    ## 2                0    0   1        0        0.604        0.511   67.60294
    ## 3                0    0   0        0        0.011        0.116   32.26109
    ## 4                0    0   0        0        0.011        0.511   46.11650
    ## 5                0    0   0        0        0.906        0.511   52.34146
    ## 6                0    0   1        0        0.604        0.767   56.91455

test.csv
--------

This data contains the predictor variables for a few candies, for which we would like you to use the model you built to predict the missing variable, `winpercent`. We will check your answers and award prizes to the model that has the best predictions.

``` r
head(read.csv('test.csv'))
```

    ##               competitorname chocolate fruity caramel peanutyalmondy
    ## 1                    Kit Kat         1      0       0              0
    ## 2   Milky Way Simply Caramel         1      0       1              0
    ## 3                 Almond Joy         1      0       0              1
    ## 4                    Fun Dip         0      1       0              0
    ## 5 WertherÕs Original Caramel         0      0       1              0
    ##   nougat crispedricewafer hard bar pluribus sugarpercent pricepercent
    ## 1      0                1    0   1        0        0.313        0.511
    ## 2      0                0    0   1        0        0.965        0.860
    ## 3      0                0    0   1        0        0.465        0.767
    ## 4      0                0    1   0        0        0.732        0.325
    ## 5      0                0    1   0        0        0.186        0.267
