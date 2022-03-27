library(dplyr) 
head(mpg)
mpg=as.data.frame(ggplot2::mpg)

df1=mpg%>%select(displ,hwy)
under4_displ=df1%>%filter(displ<=4)
over5_displ=df1%>%filter(displ>=5)

(mean_under4=mean(under4_displ$hwy)) #25.96319
(mean_over5=mean(over5_displ$hwy)) #18.07895
#Q1. 배기량 4 이하의 자동차의 고속도로 연비가 더 높다.

(df2=mpg%>%select(manufacturer,cty,hwy))
(df2_USA=df2%>%filter(manufacturer%in%c("chevrolet","dodge","ford","lincoln")))
(df2_Japan=df2%>%filter(manufacturer%in%c("honda","nissan","subaru","toyota")))
(mean_USA=mean(df2_USA$cty+df2_USA$cty)) #27.5
(mean_Japan=mean(df2_Japan$cty+df2_Japan$cty))##38.71429
#Q2. 일본 자동차의 연비가 더 높다.

mpg$mean_way=(mpg$cty+mpg$hwy)/2
df3=mpg%>%select(manufacturer,model,mean_way)
head(df3[order(-df3$mean_way),])
#Q3. volkswagen의 new beetle모델의 연비 평균이 39.5로 가장 높다. 