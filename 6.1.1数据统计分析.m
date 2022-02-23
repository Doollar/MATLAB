x=[-43,72,9,16,23,47];
y=max(x)

[y,k]=max(x)

A=[13,56,78;25,63,-235;78,25,563;1,0,-1];
max(A)
max(A,[],2)
max(max(A))

max(A(:))

x=[1200,800,1500,1000,5000];
mean(x)
median(x)

X=[1,2,3,4,5,6,7,8,9,10];
y1=prod(X)
y2=cumprod(X)

x=randn(50000,4);
y1=std(x,0,1)
y2=std(x,1,1)
x1=x';
y3=std(x1,0,2)
y4=std(x1,1,2)

A=[1,-8,5;4,12,6;13,7,-13];
sort(A)
sort(A,2,'descend')
[X,I]=sort(A)