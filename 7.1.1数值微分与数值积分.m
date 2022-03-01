x=[0,sort(2*pi*rand(1,5000)),2*pi];
y=sin(x);
f1=diff(y)./diff(x);
f2=cos(x(1:end-1));
plot(x(1:end-1),f1,x(1:end-1),f2);
d=norm(f1-f2)

format long
f=@(x)4./(1+x.^2);
[I,n]=quad(f,0,1,1e-8)

[I,n]=quadl(f,0,1,1e-8)

(atan(1)-atan(0))*4

format short

f=@(x)1./(x.*sqrt(1-log(x).^2));
I=integral(f,1,exp(1))

f=@(x)sin(1./x)./x.^2;
I=quadgk(f,2/pi,+Inf)

f1=@(x,y)exp(-x.^2/2).*sin(x.^2+y);
I1=quad2d(f1,-2,2,-1,1)

f2=@(x,y,z)4*x.*z.*exp(-z.*z.*y-x.*x);
I2=integral3(f2,0,pi,0,pi,0,1)
