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
