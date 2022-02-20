x=-2*pi:0.05:2*pi;
y=sin(x);
plot(x,y)
title('y=sin(x)')
xlabel('-2\pi\leq x \leq 2\pi')

title({'MATLAB','y=sin(x)'})

title('y=cos{\omaga}t','Color','r',)

title('y=cos{\Omega','FontSize',24)

text(-2*pi,0,'-2{\pi}')
text(3,0.28,'\leftarrow sin(x)')

x=linspace(0,2*pi,100);
plot(x,[sin(x);sin(2*x);sin(3*x)])
legend('sin(x)','sin(2x)','sin(3x)')

x=linspace(0,2*pi,100);
plot(x,[sin(x);sin(2*x);sin(0.5*x)]);
axis([0,7,-1.2,1.2])
title('不同频率正弦函数曲线');
xlabel('Variable X');ylabel('Variable Y');
text(2.5,sin(2.5),'sin(x)');
text(1.5,sin(2*1.5),'sin(2x)');
text(5.5,sin(0.5*5.5),'sin(0.5x)');
legend('sin(x)','sin(2x)','sin(0.5x)')
grid on

t=linspace(0,2*pi,100);
x=sin(t);y=cos(t);
plot(x,y,'b')
hold on;
plot(2*x,2*y,'r--')
grid on
axis([-2,2,2,2,-2,2,2,2])
axis equal

x=linspace(0,2*pi,60);
subplot(2,2,1)
plot(x,sin(x)-1);
title('sin(x)-1');
axis([0,2*pi,-2,0])
subplot(2,1,2)
plot(x,cos(x)+1);
title('cos(x)+1');
axis([0,2*pi,0,2])
subplot(4,4,3)
plot(x,tan(x));
title('tan(x)');
axis([0,2*pi,-40,40])
subplot(4,4,8)
plot(x,cot(x));
title('cos(t)');
axis([0,2*pi,-35,35])