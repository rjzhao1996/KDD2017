function compare_degree(time,a)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

path=['D:\\ZY\\evolution\\' num2str(time) '\\' num2str(a) '\\big_point.txt'];

N=10000;
D=zeros(1,N);

for i=1:N;
    P(i).degree=0;
    P(i).neibor=[];
end

fid=fopen(path,'r');

k=1;
while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    [m,n]=size(tline);
    P(k).degree=tline(1);
    if n>=2;
        P(k).neibor=tline(1,2:n);
    end
    k=k+1;
end

fclose(fid);

for i=1:N;
    pself=P(i).degree;
    if pself==0;
        D(1,i)=1;
        continue;
    end
    [m,n]=size(P(i).neibor);
    if n>=1;
        pother=0;
        for j=1:n;
            pother=pother+P(P(i).neibor(1,j)).degree;
        end
        pother=pother/n;
        D(1,i)=pother/pself;
    end
end
        


path=['D:\\ZY\\evolution\\' num2str(time) '\\' num2str(a) '\\result.txt'];
dlmwrite(path,D);

disp(['time= ' num2str(time) ' a= ' num2str(a/100)]);
end

