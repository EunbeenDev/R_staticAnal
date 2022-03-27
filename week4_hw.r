library(dplyr)
library(ggplot2)
attach(airquality)
head(airquality)
#1. 9월달 중 온도가 90F 이상인 날은 몇일 있었나?
#2. 가장 온도가 낮은 날은 언제였나?
#3. 7,8월 중 가장 온도가 높은 날은 언제였나? 이때 온도는? (화씨 기준)
#4. 온도를 섭씨로 바꾸어 temp_celsius 변수로 저장하라. 
#섭씨 온도 30C이상인 날은 hot, 이하는 mild라고 할때, hot한 날의 빈도와 mild한 날의 빈도를 알아내고 막대그래프로 그리시오

month_9=airquality%>%filter(Month==9)%>%filter(Temp>90)
nrow(month_9) #행의 수 출력
#1.답은 4일이다.

temp_days=airquality%>%select(Temp,Month,Day)
head(temp_days[order(temp_days$Temp),])
#가장 온도가 낮은 날은 5월 5일이다.

month_78=temp_days%>%filter(Month==7 | Month==8)
head(month_78[order(-month_78$Temp),])
#3. 7,8월 중 가장 온도가 높은 날은 8월 28일이며, 이때의 온도는 97이다.

airquality$temp_celsius=(airquality$Temp-32)/1.8 #섭씨 칼럼 추가
airquality$hot_mild=ifelse(airquality$temp_celsius>=30,"hot","mild")
qplot(airquality$hot_mild)