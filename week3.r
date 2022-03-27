f=c("a","b","ab","ab","o","a")
f_factor=factor(f)
levels(f_factor)
member=list(name="Lee",address="seoul",tel="01088881111",ssn=010815)
member
member$name #리스트 요소 검색
member[1:3] #범위출력
member$pay=100 #리스트 키,값 추가
member

#데이터 저장, 불러오기
#저장하기
no=c(1,2,3,4)
name=c("apple","banana","peach","berry")
price=c(500,200,300,400)
qty=c(5,2,7,9)
fruit=data.frame(No=no,Name=name,Price=price,Quantity=qty)
fruit
getwd()
save(fruit,file="test.dat") #저장
rm(fruit)
load("test.dat")
fruit
load("test.dat")
fruit

#엑셀파일
getwd()
score=read.csv("score.csv")
score
#csv파일은 datafrmae으로 반횐되며 이때 Name은 factor로 변환된다. 그래서 문자열로 변환해야 한다.
#score$Name=ad.character(score$Name) 혹은
#score=read.csv("score.csv", stringsAsFactors=FALSE)


#save: csv file
no=c(1,2,3,4)
name=c("apple","pear","banana","peach")
price=c(100,200,300,400)
fruit=data.frame(No=no,Name=name,Price=price)
fruit
getwd()
write.csv(fruit,"fruit.csv") #저장

#txt
getwd()
b=scan("birth.txt",what="") #불러오기 what(blank)
b
c=read.table("birth.txt",header=T)
c
#저장하기
vec1=c(1,2,3)
vec2=c(4,5,6)
mat=rbind(vec1,vec2)
mat
save(mat,file="testmat.txt")
dfile=load("testmat.txt")
dfile
mat


#csv파일은 datafrmae으로 반횐되며 이때 Name은 factor로 변환된다. 그래서 문자열로 변환해야 한다.
#score$Name=ad.character(score$Name) 혹은
#score=read.csv("score.csv", stringsAsFactors=FALSE)
#만약 점수란에 nil이 있으면 나머지 점수들도 integer가 아닌 factor가 된다. 
#그래서 읽어들일 때 nil을 NA로 바꾸어주어야 한다.
#read.csv("c.csv",na.strings=c("nil"))

#헤더가 없는 경우(콜롬 생성)
#x=read.csv("b.csv,header=FALSE")
#이때 x의 헤더는 v1,v2,v3이다.
#names(x)=c("id","name","score") #헤더 생성

#객체의 파일 입출력
#save(),load()

x=1:5
y=6:10
save(x,y,file="xy.RData")
rm(list=ls()) #모든 변수 삭제 #ls() 모든 변수 출력
x 
y
load("xy.RData")
x
y
