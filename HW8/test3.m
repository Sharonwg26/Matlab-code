theta=linspace(-pi,pi,50);
phi=linspace(-pi/2,pi/2,50);
[TH,P] = meshgrid(theta,phi);
X = sin(P).*sin(TH);
Y = cos(P).*cos(TH);
Z = sin(P).*cos(P);
surf(X,Y,Z);
title('\bf unknown sphere');