#apply계열 함수

#apply(x,margin,fun)
#x:배열
#margin: 함수를 적용하는 방향(1:행,2:열,C(1,2):행,열 모두)
#fun:적용할 함수

head(iris)
apply(iris[,1:4],2,sum)#[행,열]

#lapply(x,fun,추가인자)
#결과를 리스트로 반환

install.packages("ggplot2")
install.packages("dplyr")

library(ggplot2)
library(dplyr)

dim(midwest)