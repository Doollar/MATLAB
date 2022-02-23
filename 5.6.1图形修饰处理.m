[x,y]=meshgrid(0:0.1:2,1:0.1:3);
z = (x-1).^2+(y-2).^2-1;
subplot(2,2,1);
mesh(x,y,z);
title('方位角=-37.5{\circ}，仰角=30{\circ}')
subplot(2,2,2);
mesh(x,y,z);
view(0,90)
title('方位角=0{\circ}，仰角=90{\circ}')
subplot(2,2,3);
mesh(x,y,z);
view(90,0)
title('方位角=90{\circ}，仰角=0{\circ}')
subplot(2,2,4);
mesh(x,y,z);
view(-45,60)
title('方位角=45{\circ}，仰角=-60{\circ}')

cmap=colormap(parula(5))

surf(peaks)
colormap hot

c=[0,0.2,0.4,0.6,0.8,1]';
cmap=[c,c,c];
surf(peaks)
colormap(cmap)

[x,y,z]=cylinder(pi:-pi/5:0,10);
colormap(lines);
subplot(1,3,1);
surf(x,y,z);
shading flat
subplot(1,3,2);
surf(x,y,z);
shading interp
subplot(1,3,3);
surf(x,y,z);

t=linspace(0,2*pi,100);
x=sin(t);
y=cos(t);
p=y>0.5;
y(p)=NaN;
plot(x,y)
axis([-1.1,1.1,-1.1,1.1])
axis square
grid on

 [X,Y,Z]=sphere(60);
 p=Z>0.5;
 Z(p)=NaN;
 surf(X,Y,Z)
 aisx([-1,1,-1,1,-1,1])
 axis equal
 view(-45,20)
