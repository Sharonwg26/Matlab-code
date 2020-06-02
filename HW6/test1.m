function test1(iter,ser_typ)
    if (strcmp(ser_typ,'Lucas'))
        fprintf('The %d of term in Lucas = %d \n',iter,Lucas(iter));
    elseif (strcmp(ser_typ,'Fibo'))
        fprintf('The %d of term in Fibo = %d \n',iter,Fibo(iter));
    end
    
    %%%% Lucas
    function luc=Lucas(n)
        if(n==0) 
            luc=2;
        elseif (n==1) 
            luc=1;
        elseif(n>=2)
            i=2;
            while i<=n
                luc=Lucas(i-1)+Lucas(i-2);
                i=i+1;
            end
        else
            error('Not valide input, should greater than 0.')
        end       
    end

    %%%% Fibo
    function fib=Fibo(n)
       if (n==1)
            fib=3;
        elseif (n==2)
            fib=8;
        else
            i=3;
            while i<=n
                fib=Fibo(i-1)+Fibo(i-2);
                i=i+1;
            end
        end  
    end

end