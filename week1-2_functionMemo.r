getwd()
setwd()
sink("파일명") #명령의 실행결과를 별도의 파일로 저장
#...
sink() #원래 위치로 돌아감

cat()# 특정 문자열을 화면에 보여줌 print와 유사함


head(iris) #맨 앞 5개 data set 보여줌
tail(iris) #맨 뒤 5개
summary(iris) #여러 통계결과
ls() #현재 지정된 변수 목록을 반환
rm() #인수로 주어지는 오브젝트를 지워주는 역할

v1=c(1,2,3,4,5)
v2=-5:5
v3=seq(from=1,to=5,by=0.5) #1부터 5까지 0.5간격
v4=rnorm(20) #random number를 normalize된 표준 정규분표로부터 20개 만들어주겠다.

mean(v1) #v1의 평균
order(v1) #v1을 순서대로 정렬해서 보기
rev(v1) #순서 거꾸로
sd(v1) #표준편차
sort(v4) #작은 것부터 정렬
sort(v4,decreasing=TRUE) #큰 것부터 정렬

x=c(1,4,6,8,9)
x[2] #4
x[-2] #1 6 8 9 #2번째 제외하고 출력
x[3]=4 #1 4 4 8 9 #3번째 값을 4로 변경
x[2<x&x<5] #4 4 #2와 5 사이의 값들만 출력


x=c(1,4,6,8,9) #벡터형 자료 생성
y=replace(x,c(2,4),c(32,24)) #y=x에서의 2,4번째를 32,24로 바꾼 것
y
w=append(x,y) #w=x에 y를 덧붙임
z=append(x,y,after=2);z #x의 2번째 이후에 y전체 배열, 나머지 x 배열
c(1,2)+c(4,5) #5 7
c(1,2,3)+1 #벡터 각각에 1씩 더함 #2 3 4

x=c(1,2,3)
y=c(4,5,6)
x==y #순서에 따른 집합 비교
#FALSE FALSE FALSE
union(x,y) #x,y를 집합으로 하여 합집합으로 하고싶음 # 1 2 3 4 5 6
intersect(x,y) #교집합(x,y는 교집합 X) #numeric(0)
setdiff(x,y) #차집합(x에는 속하지만 y에는 속하지 않는 것) # 1,2,3
setequal(x,y) #순서(==)가 아닌 두 집합이 집합적인 관점에서 같은가? # FALSE
is.element(3,x) #x라는 집합 내에 3이 있는가? #TRUE

#실습(

(x=rep(C("a","b","c"),times=4))
# a,b,c 4번 반복 #"a" "b" "c" "a" "b" "c" "a" "b" "c"

unique(x)
#중복 요소 없이 한번씩만 출력 #"a" "b" "c"
x=c(5,4,6,8,46,5)
unique(x) # 5 4 6 8 46

match(x,c("a"))
#x 순서대로 탐색했을 떄 각 요소가 "a"와 같은가? T=1, F=NA
# 1 NA NA 1 NA NA 1 NA NA 1 NA NA

y=c("d","e","f")
z=paste(x[1],y[3])
z
# "a f" (**"a" "f" 아님.**)
# 나열된 원소를 이어붙여서 결과값으로 제공. 이 경우 결과값은 한 개

x=runif(5) #0-1사이의 random 값 5개 생성

(0.4<=x)&(x<=0.7) #x값들이 각각 범위에 해당되는지 TRUE or FALSE
#ex) FALSE FALSE TRUE FALSE FALSE

any(x>0.8)
#x값들 중 범위에 해당되는 것이 하나라도 있으면 TRUE, 아니면 FALSE

all(x<0.7)
#x값들 모두 범위에 해당되면 TRUE, 하나라도 아니면 FALSE

is.vector(x)
#x는 벡터인가? TRUE or FALSE

#보고서
#문자열 조작 함수
charmatch() #부분 문자열의 일치 검색


chartr() #한 글자씩 치환

grep() #일치 여부 반환

x=c(4,5,4,8,11)
grep(5,x)
# 2 #x에서 2번째가 5와 일치함

files=c("sdfjwh01","wdskwn03","wofwnd01")
grep("\\01$",files)
# 1 3 #files의 1,3 번째가 01로 끝남

nchar() #문자열의 길이 조사

paste() #하나의 문자열로 결합

substr() #문자열에서 일부만 잘라내는 경우

strsplit() #문자열 분할

tolower() #모든 대문자를 소문자로
toupper() #모든 소문자를 대문자로

#기타

rep()
(x=rep(C("a","b","c"),times=4))
# a,b,c 4번 반복 #"a" "b" "c" "a" "b" "c" "a" "b" "c"

gl() #특별한 수준(level)을 가지는 요인(factor)을 생성
gl(n=2, k=8, labels=c("Control", "Treat"))
# 수준이 2이며, 이 수준을 8번 반복한다.
# labels을 지정하지 않으면 수준은 1, 2로 표현된다.
# 수준 1을 8번 생성하고, 그 다음으로 수준 2를 8번 생성한다


#)

row1=c(1,2,3);row1
row2=c(4,5,6);row2
row3=c(7,8,9);row3
mat1=rbind(row1,row2,row3);mat1
mat2=cbind(row1,row2,row3);mat2

chars=c("a","b","c","d","e","f","g","h","i","j");chars
mat1=matrix(chars);mat1
mat2=matrix(chars,ncol=5);mat2
mat3=matrix(1:8,nrow=2);mat3
mat3*3;mat3
mat3*c(10,20);mat3
x=matrix(1:12,nrow=3,dimnames=list(c("R1","R2","R3"),c("c1","c2","c3","c4")))
x
x[7]
x[1,]
x[,2:4]
x[,2]
x[,-2]
mat1=matrix(1:9,nrow=3,dimnames=list(c("row1","row2","row3"),c("col1","col2","col3")),byrow=TRUE)
mat1
apply(mat1,1,max)#mat1행렬에 대해서 모든 행(1)에 대해 max라는 함수를 적용하라.
apply(mat1,2,max)#mat1행렬에 대해서 모든 열(2)에 대해 max라는 함수를 적용하라.
mean(mat1[2,])#mat1의 두번째 행(row)의 mean
apply(mat1,1,sum)#mat1의 각 row의 합(sum)
apply(mat1,2,sum)#mat1의 각 col의 합
apply(mat1,1,mean)#mat1의 각 row의 mean

no=c(1,2,3,4)
name=c("Apple","Banana","Peach","Berry")
prices=c(500,200,200,50)
qty=c(5,2,7,9)
fruit=data.frame(No=no,Name=name,Prices=prices,Qty=qty);fruit
fruit[1,] #1's row
fruit[,2:3] #2nd and 3rd column
fruit[,-2] #list all except the 2nd column

name=c("강수민","강희수","권민찬","권재성")
english=c(90,80,60,70)
math=c(50,60,100,20)
score=data.frame(Name=name,English=english,Math=math);score

score$AVG=(score$English+score$Math)/2
score




# burger data frame 생성
kcal = c(514,533, 566)
na=c(917,817,920)
fat=c(15,13,12)
menu = c("빅맥","불고기버거","치즈와퍼")

burger = data.frame(Kcal=kcal, Na=na, Fat=fat, Menu=menu)
rownames(burger) = c('M','L','B')

#### 추출 ###
#1. M사의 나트륨 함량은?
burger['M','Na']
#2. 모든 브랜드의 열량정보는?
burger[,'Kcal']
#3. M과 B사의 menu명은?
burger[c('M','B'), 'Menu']


class(iris)     	#데이터셋 자료 구조 확인
dim(iris)       	#데이터 dimension 정보
nrow(iris)     	  #row수
ncol(iris)       	#col수
colnames(iris)  	#col이름
str(iris)       	#데이터셋 요약 정보 보기

unique(iris[,5])

colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

is.data.frame(iris) 
is.matrix(iris)
new_iris_mat = as.matrix(iris[,1:4])
new_iris_mat
class(new_iris_mat)