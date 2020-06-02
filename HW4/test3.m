for x=-1:0.1:3
    y=2.*x.^2-3.*sin(x)+2;
end
t1=toc(tic);
fprintf('for loop time consume : %d\n',t1)
    
x1=linspace(-1,3,40);
y1=2.*x1.^2-3.*sin(x1)+2;
t2=toc(tic);
fprintf('vectorization time consume : %d \n',t2);