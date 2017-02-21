function degree(time,a)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
path=['D:\\ZY\\evolution\\' num2str(time) '\\' num2str(a) '\\big_point.txt'];

N=10000;
D=zeros(1,N);


fid=fopen(path,'r');

k=1;
while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    
    D(1,k)=tline(1);
    k=k+1;
end

fclose(fid);
        


path=['D:\\ZY\\evolution\\' num2str(time) '\\' num2str(a) '\\result_degree.txt'];
dlmwrite(path,D);

disp(['time= ' num2str(time) ' a= ' num2str(a/100)]);

end

