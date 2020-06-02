t = linspace(0,20*pi,601);
plot3(t.*sin(t),t.*cos(t),t);
hold on;
plot3(t.*cos(t),t.*sin(t),t);