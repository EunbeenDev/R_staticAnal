head(mpg)
mpg=as.data.frame(ggplot2::mpg)

df=mpg%>%select(class,cty)
df_suv=df%>%filter(class=="suv")
df_compact=df%>%filter(class=="compact")
mean(df_suv$cty)
mean(df_compact$cty)
#Q1.compact
#Q2
mpg%>%filter(manufacturer=="audi")%>%arrange(desc(hwy))%>%head(5)
#Q3.

mpg%>%filter(class=="compact")%>%group_by(manufacturer)%>%summarise(num=n())%>%arrange(desc(num))