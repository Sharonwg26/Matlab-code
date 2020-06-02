%test4.m
cofLst=[3,2,6];
fh= sum_gen(cofLst);
fprintf("ans = %d\n",fh(2,3,5))

function fh=sum_gen(cofLst)
    strTmp ="@(a,b,c)"+cofLst(1)+"*a+"+cofLst(2)+"*b+"+cofLst(3)+"*c";
    fh=str2func(strTmp);
end