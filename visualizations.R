####### Visualizations of the training data ########
training.data = read.csv('train.csv')


### Sugarpercent vs Pricepercent visual
library(ggplot2)
ggplot(data = training.data, aes(x = sugarpercent, 
                                 y = pricepercent, 
                                 label = competitorname)) +
  geom_point() +
  geom_smooth(method = "lm") + 
  geom_text(check_overlap = T,            # automatically reduce overlap (deletes some labels)
            vjust = "bottom",             # adjust the vertical orientation
            nudge_y = 0.01,               # move the text up a bit so it doesn't touch the points
            angle = 30,                   # tilt the text 30 degrees
            size = 2) +                   # make the text smaller (to reduce overlap more)
  labs(title = "More sugary candies are more expensive",        # plot title
       x = "Sugar content (percentile)",                        # x axis label
       y = "Price (percentile)" )                               # y axis label



### Clustering Heat Map
library(dplyr)
for(i in 2:10){
  training.data[,i+12]<-ifelse(training.data[,i]==1,'yes','no')
}
training.data <- training.data %>% dplyr::mutate(sum = rowSums(.[2:10]))

df_scale <- scale(training.data %>% dplyr::select_if(is.numeric) %>% dplyr::select(-sum))
rownames(df_scale) <- training.data$competitorname

heatmap(as.matrix(df_scale), col = brewer.pal(9,'Reds'),main = "Candies clusters",cexRow=.5,cexCol=.8)


