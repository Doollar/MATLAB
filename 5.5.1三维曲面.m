x=2:6;
y=(3:8)';
X=ones(size(y))*x;
Y=y*ones(size(x));

x=2:6;
y=(3:8)';
[X,Y]=meshgrid(x,y)
Z=randn(size(X));
plot3(X,Y,Z);
grid on

t = -2:0.2:2;
[X,Y] = meshgrid(t);
Z = X.*exp(-X.^2 - Y.^2);
subplot(1,3,1)
mesh(X,Y,Z);
subplot(1,3,2)
surf(X,Y,Z);
subplot(1,3,3)
plot3(X,Y,Z);
grid on

t = 1:5;
z = [0.5*t;2*t;3*t];
mesh(z);

[x,y]=meshgrid(0:0.1:2,1:0.1:3);
z = (x-1).^2+(y-2).^2-1;
subplot(2,2,1);
meshc(x,y,z);
title('meshc(x,y,z)')
subplot(2,2,2);
meshz(x,y,z);
title('meshz(x,y,z)')
subplot(2,2,3);
surfc(x,y,z);
title('surfc(x,y,z)')
subplot(2,2,4);
surfl(x,y,z);
title('surfl(x,y,z)')

subplot(1,3,1);
[x,y,z]=cylinder;
surf(x,y,z);
subplot(1,3,2);
t=linspace(0,2*pi,40)
[x,y,z]=cylinder(2+cos(t),30);
surf(x,y,z);
subplot(1,3,3);
[x,y,z]=cylinder(0:0.2:2,30);
surf(x,y,z);

[x,y,z]=cylinder(1,60)
z=[-1*z(2,:);z(2,:)];
surf(x,y,z);
hold on
surf(y,z,x);
axis equal

p1=peaks(10);
p2=peaks;
p3=peaks(-3:0.2:3);
[x,y]=meshgrid(-2:0.1:2,0:0.1:5);
p4=peaks(x,y);

funx = @(u,v)u.*sin(v);
funy = @(u,v)-u.*cos(v);
funz = @(u,v)v;
fsurf(funx,funy,funz,[-5,5,-5,-2])
hold on
fmesh(funx,funy,funz,[-5,5,-2,2])
hold off
