[t,y]=ode23(f,[0,10],2);
y1=sqrt(t+1)+1;
plot(t,y,'b:',t,y1,'r');

f=@(t,x)[-2,0;0,1]*[x(2);x(1)];
[t,x]=ode45(f,[0,20],[1,0]);
subplot(2,2,1);plot(t,x(:,2));
subplot(2,2,2);plot(x(:,2),x(:,1));

lamda=0.01;
f=@(t,y)y^2-y^3;
tic;[t,y]=ode45(f,[0,2/lamda],lamda);toc
disp(['ode45计算的点数',num2str(length(t))]);

lamda=1e-5;
f=@(t,y)y^2-y^3;
tic;[t,y]=ode45(f,[0,2/lamda],lamda);toc
disp(['ode45计算的点数',num2str(length(t))]);

lamda=1e-5;
f=@(t,y)y^2-y^3;
tic;[t,y]=ode15s(f,[0,2/lamda],lamda);toc
disp(['ode45计算的点数',num2str(length(t))]);

