#기 정의된 함수 불러오기(mytranspose 함수)

##현재 디렉토리는 제 컴퓨터 기준으로 지정 되어있음.
source("mytranspose.r")


#변수 정의(Matrix 형태)
myvar1_1 <-  matrix(1:10, nrow=5, ncol=2)
myvar1_2 <-  matrix(NA, nrow=0, ncol=0)
myvar1_3 <-  matrix(c(1,2), nrow=1, ncol=2)
myvar1_4 <-  matrix(c(1,2), nrow=2, ncol=1)

#변수 정의(Vector 형태)
myvar2_1 <- c(1,2,NA,3)
myvar2_2 <- c(NA)
myvar2_3 <- c()

#변수 정의(Dataframe 형태)
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)


#테스트 실행(myvar1)
all.equal(mytranspose(myvar1_1),t(myvar1_1))
all.equal(mytranspose(myvar1_2),t(myvar1_2))
all.equal(mytranspose(myvar1_3),t(myvar1_3))
all.equal(mytranspose(myvar1_4),t(myvar1_4))



## t()함수를 쓰면 매트릭스로 출력, 
## class를 vector로 변환하는 과정
t1<-t(myvar2_1)
t2<-t(myvar2_2)
class(t1)<-'vector'
class(t2)<-'vector'

#테스트 실행(myvar2)
all.equal(mytranspose(myvar2_1),t1)
all.equal(mytranspose(myvar2_2),t2)
all.equal(mytranspose(myvar2_3),NULL)

## t()함수를 쓰면 매트릭스로 출력, 
## class를 vector로 변환하는 과정

t3<-t(mydata3)
colnames(t3)<-row.names(mydata3)
class(t3)<-'dataframe'

#테스트 실행(mydata3)
all.equal(mytranspose(mydata3),t3)
