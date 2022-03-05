syms a m x n;
f=(x^(1/m)-a^(1/m))/(x-a);
limit(f,x,a)

g=(1+1/n)^n;
limit(g,n,lnf)

syms x y;
f=sqrt(1+exp(x));
diff(f)

g=x**exp(y)/y^2;
diff(g,x)

diff(g,y)

syms x t;
f=5*x*t/(1+x^2);
int(f,t)

syms x t;
int(abs(1-x),1,2)

int(1/(1+x^2),-inf,inf)

int(4*x/t,t,2,sin(x))

xi=0:50:600;
yi=[4.4,4.5,4.6,4.8,4.9,5.1,5.4,5.2,5.5,5.2,4.9,4.8,4.7];
p=polyfit(xi,yi,3)
plot(xi,yi,'o',xi,polyval(p,xi),'r');
syms y x;
y=poly2sym(p,x);  %计算横截面面积
s=int(y,x,0,600);   %计算水流量
v=s*0.6;
eval(v)

xi=0:50:600;
yi=[4.4,4.5,4.6,4.8,4.9,5.1,5.4,5.2,5.5,5.2,4.9,4.8,4.7];
yn=-yi;
p=polyfit(xi,yn,3)
plot(xi,yn,'o',xi,polyval(p,xi),'r');
syms y x yii;
y=poly2sym(p,x);  %计算横截面面积
yii=diff(y,x);
x=50:60;
k=eval(yii);
all(abs(k)<1/1.5)