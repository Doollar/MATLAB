x=0:0.1:10;
y=1./x;
subplot(2,2,1);
plot(x,y)
title('plot(x,y)');
subplot(2,2,2);
semilogx(x,y)
title('semilogx(x,y)');
grid on
subplot(2,2,3);
semilogy(x,y)
title('semilogy(x,y)');
grid on
subplot(2,2,4);
loglog(x,y)
title('loglog(x,y)')
grid on

t=0:pi/100:2*pi;
r=1-sin(t);
subplot(1,2,1)
polar(t,r)
subplot(1,2,2)
t1=t-pi/2;
r1=1-sin(t1);
polar(t,r1)

y=[1:5;1,2,1,2,1;5:-1:1];
subplot(1,2,1)
bar(y)
title('Group')
subplot(1,2,2)
bar(y,'stacked')
title('Stack')

y=randn(500,1);
subplot(2,1,1);
hist(y)
title('高斯分布直方图');
subplot(2,1,2);
x=-3:0.2:3;
hist(y,x);
title('指定区间中心点的直方图')

y=randn(500,1);
theta=y*pi;
rose(theta)
title('在极坐标下的直方图')

score=[5,17,23,9,4];
ex=[0,0,0,0,1];
pie(score,ex)
legend('优秀','良好','中等','及格','不及格','location','eastoutside')

t=0:pi/50:2*pi;
x=16*sin(t).^3;
y=13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t);
scatter(x,y,'rd','filled')

A=[4,5];B=[-10,0];C=A+B;
hold on;
quiver(0,0,A(1),A(2));
quiver(0,0,B(1),B(2));
quiver(0,0,C(1),C(2));
text(A(1),A(2),'A');
text(B(1),B(2),'B');
text(C(1),C(2),'C');
axis([-12,6,-1,6])
grid on