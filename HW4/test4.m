filename = '.\text4.txt';
[x,y]=textread(filename,'%n%n');
plot(x,y,'o');
hold on;
p = polyfit(x,y,1);
x1 = linspace(1,8);
y1 = polyval(p,x1);
plot(x1,y1,'g');
title('Least Square Regression When n=1')
hold off