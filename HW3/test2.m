f=exp(i*pi)+1;
disp(['roundoff errors']);
if abs(f)<10e-14
    disp(['the same']);
else
    disp(['not the same'])
end
