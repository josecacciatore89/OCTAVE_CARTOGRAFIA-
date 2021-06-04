clear
format short
clc
close all
XYZ = load('C:\Users\josec\Desktop\mapa\TCCbom2.txt');
X = XYZ(:,1);
Y = XYZ(:,2);
Z = XYZ(:,3);
M=mean (X) # M�DIA DE X
N=mean (Y) # M�DIA DE Y
T=mean (Z) # M�DIA DE Z
figure(1)
plot(X, Y, '^k');
title 'Distribui��o dos pontos de terreno no espa�o 2D'
xlabel 'X [m]'
ylabel 'Y [m]'
figure(2)
plot3(X, Y, Z, '^k');
title 'Distribui��o dos pontos de terreno no espa�o 3D'
xlabel 'X [m]'
ylabel 'Y [m]'
zlabel 'Z [m]'
limX = min(X):10:max(X);
limY = min(Y):10:max(Y);
[Xf, Yf] = meshgrid(limX, limY);
figure(3)
hold on
plot(Xf, Yf, '+r');
plot(X, Y, '^k');
Zf = griddata(X, Y, Z, Xf, Yf);
figure(4)
plot3(Xf, Yf, Zf, '+r');
figure(5)
surfc(Xf, Yf, Zf), shading interp
colormap(winter)
colorbar
figure(6)
colormap(jet)
contour(Zf, 50)
colorbar
figure(7)
plot(M, N, '+r');
title 'M�DIA DE X e Y'
xlabel 'M [m]'
ylabel 'N [m]'
figure(8)
plot3(M, N, T, '+r');
title 'M�DIA DE X Y e Z'
xlabel 'M [m]'
ylabel 'N [m]'
zlabel 'T [m]'
figure(9)
hold on
plot3(M, N, T, '+r');
plot3(X, Y, Z, '^k');
title 'M�DIA DE X Y e Z'
xlabel 'M [m]'
ylabel 'N [m]'
zlabel 'T [m]'
xlabel 'X [m]'
ylabel 'Y [m]'
zlabel 'Z [m]'
j=save ('C:\Users\josec\Desktop\mapa\X.txt', "X","Y","Z");


 
