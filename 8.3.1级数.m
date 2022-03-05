syms n ;
s1=symsum(n^2,1,100)

s2=symsum((-1)^(n-1)/n,1,inf)

s3=symsum((-1)^(n-1)/(2*n-1),n,1,inf)

hypergeom([-1/2],1/2,-1)

eval(s3)*4

syms k r;
p2=symsum(50000*(1+0.045/k)^k,2,2)
eval(p2)

limit((1+r/k)^k,k,inf)

50000*exp(0.045)


syms x;
f=(1+x+x^2)/(1-x+x^2);
taylor(f,x,1,'Order',6)

expand(ans)
