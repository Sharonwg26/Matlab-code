x1=linspace(-1,3,40);
y1=2.*x1.^2-3.*sin(x1)+2;
plot(x1,y1,'c--','LineWidth',3);
hold on;

for x=-1:0.1:3
    y=2.*x.^2-3.*sin(x)+2;
    plot(x1,y1,'m.','Markersize',20);
end