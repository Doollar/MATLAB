f=[3,-5,0,-7,5,6];
g=[3,5,-3];
g1=[0,0,0,g];
f+g1
f-g1
conv(f,g)
[Q,r]=deconv(f,g)
conv(g,Q)+r

a=[3 1 0 -6];
b=[1 2]
polyder(a)
c=polyder(a,b)
[p,q]=polyder(a,b)

a=[1,8,0,0,-10];
x=[-1,1.2;2,-1.8];
y1=polyval(a,x)
y2=polyvalm(a,x)

a=[1,8,0,0,-10];
x=roots(a)
p=poly(x)

p=[-38.89,126.11,-3.42];
q=polyder(p)
roots(q)
polyval(p,1.6214)
x=0:0.1:2;
plot(x,polyval(p,x),1.6214,98.8154,'rp');