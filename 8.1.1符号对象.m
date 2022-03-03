t=sym(2);
t + 1/2

sin(sym(pi/3))

sin(pi/3)

a = 5;
b = -8;
x = sym('a');
y = sym('b');
w = (a + b) * (a - b)

s = (x + y) *(x - y)

eval(s)

syms x;
f = 2*x^2+3*x-5
g = x^2-x+7
f+g

syms x;
assume(x<0);
abs(x)==x

assume(x,'posiive');
abs(x)==x

syms x;
y=x>0&x<10

y=and(x>0,x<10)

syms a b;
s=a^3-b^3;
factor(s)

syms p;
m=2^p-1;
p=19;
m19=eval(m)

factor(m19)

p=23;
m23=eval(m)

factor(m23)

syms a b c x;
f=a*x^2+b*x+c;
g=coeffs(f,x)

g=g(end:-1:1)

roots(g)

syms a b x y alp
m=[a^3-b^3,sin(alp)^2+cos(alp)^2;(15*x*y-3*x^2)/(x-5*y)];
simplify(m)

syma lamda;
A=[1-lamda,-2,4;2,3-lamda,1;1,1,1-lamda];
D=det(A);
factor(D)