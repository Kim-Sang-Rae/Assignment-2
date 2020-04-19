#�� ���ǵ� �Լ� �ҷ�����(mytranspose �Լ�)

##���� ���丮�� �� ��ǻ�� �������� ���� �Ǿ�����.
source("mytranspose.r")


#���� ����(Matrix ����)
myvar1_1 <-  matrix(1:10, nrow=5, ncol=2)
myvar1_2 <-  matrix(NA, nrow=0, ncol=0)
myvar1_3 <-  matrix(c(1,2), nrow=1, ncol=2)
myvar1_4 <-  matrix(c(1,2), nrow=2, ncol=1)

#���� ����(Vector ����)
myvar2_1 <- c(1,2,NA,3)
myvar2_2 <- c(NA)
myvar2_3 <- c()

#���� ����(Dataframe ����)
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)


#�׽�Ʈ ����(myvar1)
all.equal(mytranspose(myvar1_1),t(myvar1_1))
all.equal(mytranspose(myvar1_2),t(myvar1_2))
all.equal(mytranspose(myvar1_3),t(myvar1_3))
all.equal(mytranspose(myvar1_4),t(myvar1_4))



## t()�Լ��� ���� ��Ʈ������ ���, 
## class�� vector�� ��ȯ�ϴ� ����
t1<-t(myvar2_1)
t2<-t(myvar2_2)
class(t1)<-'vector'
class(t2)<-'vector'

#�׽�Ʈ ����(myvar2)
all.equal(mytranspose(myvar2_1),t1)
all.equal(mytranspose(myvar2_2),t2)
all.equal(mytranspose(myvar2_3),NULL)

## t()�Լ��� ���� ��Ʈ������ ���, 
## class�� vector�� ��ȯ�ϴ� ����

t3<-t(mydata3)
colnames(t3)<-row.names(mydata3)
class(t3)<-'dataframe'

#�׽�Ʈ ����(mydata3)
all.equal(mytranspose(mydata3),t3)