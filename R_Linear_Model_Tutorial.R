data(father.son, package='UsingR')
library(ggplot2)
head(father.son)

ggplot(father.son,aes(x=fheight, y=sheight))+
  geom_point()+geom_smooth(method="lm")+
  labs(x="Fathers",y="Sons")

heightsLM <- lm(sheight ~ fheight, data=father.son)
heightsLM

summary(heightsLM)

