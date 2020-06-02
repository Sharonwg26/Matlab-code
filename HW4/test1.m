n=input('Please input the number to calculate Lucas number.\n');
while n < 0
    error('ERROR_MESSAGE :Lucas number should greater than 0.');
end
while n == 0
    fprintf('The Lucus number :2\n');
    break
end
while n == 1
    fprintf('The Lucus number :1\n');
    break
end
while n>1
   alpha = (1 + sqrt(5))/2;
    luc = round( alpha^n );
    fprintf('The Lucus number : %d\n',luc); 
    break
end
