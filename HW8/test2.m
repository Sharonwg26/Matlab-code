[x,y]=meshgrid(-4:.1:4)
z = exp(-.5*(x.^2+.5*(x-y).^2));
mesh(x,y,z)
colormap('default');
colorbar;
title('Mesh graph');