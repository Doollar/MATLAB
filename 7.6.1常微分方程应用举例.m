rabbitFox=@(t,x)[x(1)*(2-0.01*x(2));x(2)*(-1+0.01*x(1))];
[t,x]=ode45(rabbitFox,[0,30],[300,150])
subplot(1,2,1);
legend('x1(t)','x2(t)');
xlabel('时间');ylabel('物种数量');
grid on
subplot(1,2,2);
grid on