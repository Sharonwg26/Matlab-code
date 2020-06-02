key_str={'Name Nation Grade Score Age PASS_EXAM'};
key_lst=split(key_str,' ');

[fid] = fopen('test_f3.txt','r+');
C = textscan(fid,'%s %s %s %f %d %s');

for idx=1:length(key_lst)
   fprintf('%s :\n',key_lst{idx});
   disp(C{idx});
   fprintf('-----------------------\n');
end