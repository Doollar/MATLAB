syms x y a b c;
solve(a*x^2+b*x+c==0)

f=a*x^2+b*x+c==0;
solve(f)

solve(a*x^2+b*x+c)

f=a*x^2+b*x+c;
solve(f)

syms x y t;
y=dsolve('Dy-(x^2+y^2)/x^2/2',x)

[x,y]=dsolve('Dx=4*x-2*y','Dy=2*x-y',t)