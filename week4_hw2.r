library(dplyr)
myairquality_origin=read.csv("서울시 대기질 자료 제공_2020-2021.csv",stringsAsFactors=FALSE)

myairquality=myairquality_origin #원본 복제
head(myairquality) 

#데이터 정제
table(is.na(myairquality)) #NA값 유무 확인

myairquality$미세먼지.PM10.=ifelse(is.na(myairquality$미세먼지.PM10.),mean(myairquality$미세먼지.PM10.,na.rm=T),myairquality$미세먼지.PM10.) # NA값->평균값으로 대체
myairquality$초미세먼지.PM25.=ifelse(is.na(myairquality$초미세먼지.PM25.),mean(myairquality$초미세먼지.PM25.,na.rm=T),myairquality$초미세먼지.PM25)

table(is.na(myairquality)) #NA값 유무 다시 확인

#1. 각 구(區)별로 미세먼지 및 초미세먼지의 평균, 중앙값, 최대치를 구하시오. 미세먼지의 평균이 가장 높은 구는 어디인가?
#2. 가장 미세먼지가 높았던 일시와 해당 구는 무엇인가?
#3. 초미세먼지의 최소값은 얼마이며, 총 몇 개인가?

myairquality=myairquality%>%group_by(myairquality$구분)%>%summarise(mean_dust=mean(미세먼지.PM10.),mean_dust=mean(미세먼지.PM10.),median_dust=median(미세먼지.PM10.),max_dust=max(미세먼지.PM10.),
mean_Udust=mean(초미세먼지.PM25.),median_Udust=median(초미세먼지.PM25.),max_Udust=max(초미세먼지.PM25.))
myairquality%>%arrange(desc(mean_dust)) #내림차순 정렬
#Q1. 서초구의 미세먼지 평균이 가장 높다.

head(myairquality_origin%>%select(일시, 구분, 미세먼지.PM10.)%>%arrange(desc(미세먼지.PM10.)))
#Q2. 2021-05-08 1:00에 중구의 미세먼지가 가장 높았다.

Udust=myairquality_origin%>%select(초미세먼지.PM25.) #초미세먼지 데이터
Udust_min=min(myairquality_origin$초미세먼지.PM25.,na.rm=T) #Udust의 NA값 삭제 후 min값 구하기
Udust_min 
nrow(Udust%>%filter(Udust$초미세먼지.PM25.==Udust_min)) #최소값과 같은 행의 개수
#Q3. 초미세먼지의 최소값은 1이며, 5754개이다.
