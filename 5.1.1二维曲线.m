x=[2.5,3.5,4,5];
y=[1.5,2.0,1,1.5];
plot(x,y)

x=[1.5,2,1,1.5];
plot(x)

x=[2.5,3.5,4,5];
y=[1.5,2.0,1,1.5];
cx=x+y*i;
plot(cx)

x=linspace(0,2*pi,100);
y=[sin(x);sin(2*x);sin(0.5*x)];
plot(x,y)

t=0:0.01:2*pi;
t1=t';
x=[t1,t1,t1];
y=[sin(t1),sin(2*t1),sin(0.5*t1)];
plot(x,y)

t1=linspace(0,2*pi,10);
t2=linspace(0,2*pi,20);
t3=linspace(0,2*pi,100);
plot(t1,sin(t1),t2,sin(t2)+1,t3,sin(t3)+2)

x=(0:pi/50:2*pi)';
y1=2*exp(-0.5*x).*[1,-1];
y2=2*exp(-0.5*x).*sin(2*pi*x);
x1=0:0.5:6;
y3=2*exp(-0.5*x1).*sin(2*pi*x1);
plot(x,y1,'k',x,y2,'b--',x1,y3,'rp')

fplot(@(x)sin(1./x),[0,0.2],'b')

fplot(@(t)t.*sin(t),@(t)t.*cos(t),[0,10*pi],'r')