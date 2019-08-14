library(ggplot2)
getwd()
data<-read.csv('AppleStore.csv')
data
colnames(data)
summary(data)
dim(data)
ggplot(data,aes(x=id,y=price)) + geom_point() + ggtitle("track wise price") 


ggplot(data, aes(size_bytes)) + geom_histogram(aes(fill=..count..)) +
  labs(title="Histogram for Size in Bytes") +labs(x="Bytes", y="Count")

ggplot(data,aes(user_rating)) + geom_histogram(aes(fill=..count..)) +
  labs(title="Histogram for User Ratings") +labs(x="Rating", y="Count")+ 
  scale_fill_gradient("Count", low = "darkgreen", high = "green")


ggplot(data, aes(x=prime_genre, y=user_rating)) + 
  geom_boxplot(fill = "lightblue") +
  theme(axis.text.x = element_text(angle = 60,hjust=1)) +
  labs(title="Ratings Per Prime Genre") +
  labs(x="Prime Genre", y="User Rating")


ggplot(data,aes(sup_devices.num))+geom_histogram(aes(fill=..count..))+
  labs(title="No of supporting devices count")

ggplot(data,aes(lang.num))+geom_histogram(aes(fill=..count..))+
  labs(title="Count supporting languages")
