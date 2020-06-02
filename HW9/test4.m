clc;
clear;
inname=input('input file name:','s');
message1='Open file failed';
[fid] = fopen(inname,'r');
while ~exist(inname,'file')
    fprintf('%s', message1);
    return;
end

myData = fscanf(fid, '%g');
fclose(fid);
n=int16(myData);

outname=input('output file name:','s');
if ~exist(outname,'file')
    [fid] = fopen(outname, 'w+');
    fprintf(fid,'%d\n',n); 
    fclose(fid);
else
    fprintf('Outputfile already exist.\n');
    YN=input('Keep existing file? (y/n) ','s');
	while YN=='y'
        [fid] = fopen(outname, 'w+');
        fprintf(fid,'%d\n',n); 
        fclose(fid); 
        break;
    end
end    