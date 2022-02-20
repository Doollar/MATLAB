x=[0.2,1.8,2.5];
y=[1.3,2.8,1.1];
z=[0.4,1.2,1.6];
plot3(x,y,z)
grid on
axis([0,3,1,3,0,2]);

t=linspace(0,10*pi,200);
x=sin(t)+t.*cos(t);
y=cos(t)-t.*sin(t)
z=t;
subplot(1,2,1)
plot3(x,y,z)
grid on
subplot(1,2,2)
plot3(x(1:4:200),y(1:4:200),z(1:4:200))
grid on

t=0:0.01:2*pi;
t=t';
x=[t,t,t,t,t];
y=[sin(t),sin(t)+1,sin(t)+2,sin(t)+3,sin(t)+4];
z=[t,t,t,t,t];
plot3(x,y,z)

t=0:0.01:2*pi;
x=t;
y=[sin(t);sin(t)+1;sin(t)+2;sin(t)+3;sin(t)+4];
z=t
plot3(x,y,z)

t1=0:0.01:1.5*pi;
t2=0:0.01:2*pi;
t3=0:0.01:3*pi;
plot3(t1,sin(t1),t1,t2,sin(t2)+1,t2,t3,sin(t3)+2,t3)

t=0:pi/50:6*pi;
x=cos(t);
y=sin(t);
z=2*t;
plot3(x,y,z,'p')
xlabel('X'),ylabel('Y'),zlabel('Z');
grid on

xt=@(t)exp(-t/10).*sin(5*t);
yt=@(t)exp(-t/10).*cos(5*t);
zt=@(t)t;
fplot3(xt,yt,zt,[-12,12])