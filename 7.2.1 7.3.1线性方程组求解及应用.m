A=[2,1,-5,1;1,-5,0,7;0,2,1,-1;1,6,-1,-4];
b=[13,-9,6,0]';
x=A\b

A=[2,1,-5,1;1,-5,0,7;0,2,1,-1;1,6,-1,-4];
b=[13,-9,6,0]';
[L,U]=lu(A);
x=U\(L\b)

A=[4,-2,-1;-2,4,3;-1,-3,3];
b=[1,5,0]';
[x,n]=jacobi(A,b,[0,0,0]',1.0e-6)

[x,n]=gauseidel(A,b,[0,0,0]',1.0e-6)

A=[1,2,-2;1,1,1;2,2,1];
b=[9;7;6];
[x,n]=jacobi(A,b,[0,0,0]',1.0e-6)

[x,n]=gauseidel(A,b,[0,0,0]',1.0e-6)

xi=[1.02,0.87,0.67,0.44,0.16];
yi=[0.39,0.27,0.18,0.13,0.13];
A=zeros(length(xi));
for i=1:length(xi)
    A(i,:)=[xi(i)*xi(i),2*xi(i)*yi(i),yi(i)*yi(i),2*xi(i),2*yi(i)];
end
b=-ones(length(xi),1);
ai=A\b

f=@(x,y)2.4645*x.^2-0.8846*x.*y+6.4917*y.^2-1.3638*x-7.2016*y+1;
h=ezplot(f,[-0.5,1.2,0,1.2]);