f=@(x)x-1./x+5;
x1=fzero(f,-5)
x2=fzero(f,1)
x3=fzero(f,0.1)
fplot(f)

f=@(x)x.^2-1;
x=[];
x0=-0.25:0.001:0.25;
for x00=x0
    x=[x,fzero(f,x00)];
end
plot(x0,x,'-o')
xlabel('初值');
ylabel('方程的根');
axis([-0.25,0.25,-1,1])

f=@(x)x-1./x+5
x1=fsolve(f,-5,optimset('Display','off'))
x2=fsolve(f,1,optimset('Display','off'))
x3=fsolve(f,0.1,optimset('Display','off'))

f=@(x)[sin(x(1))+x(2)+x(3)^2*exp(x(1)),x1+x2+x3,x(1)*x(2*x(3))];
f([1,1,1])
x=fsolve(f,[1,1,1],optimset('Display','off'))
f(x)

f=@(x)x-1./x+5
[xmin,fmin]=fminbnd(f,-10,-1)

f=@(x)0.4*x(2)+x(1)^2-x(1)*x(2)+1/30*x(1)^3;
x0=[0.5;0.5];
A=[-1,-0.5;-0.5,-1];
b=[-0.4;-0.5];
lb=[0;0];
option=optimset('Display','off');
[xmin,fmin]=fmincon(f,x0,A,b,[],[],lb,[],[],option)

a=[10,30,16.667,0.555,22.2221];
b=[10,50,29,29.888,49.988];
c=[10,18,20,14,25];
f=@(x)sum(c.*sqrt((x(1)-a).^2+(x(2)-b).^2));
[xmin,fmin]=fminsearch(f,[15,30])

a=[10,30,16.667,0.555,22.2221];
b=[10,50,29,29.888,49.988];
c=[10,18,20,14,25];
f=@(x)sum(c.*sqrt((x(1)-a).^2+(x(2)-b).^2));
[xmin,fmin]=fmincon(f,[15,30],[],[],[],[],[],[],'funny')