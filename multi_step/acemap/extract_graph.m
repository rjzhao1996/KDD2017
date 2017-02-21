function extract_graph()
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
global P;
global N;
N=273751;

path='D:\\ZY\\Acemap.txt';

fid=fopen(path,'r');


while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    [m,n]=size(tline);
    P(tline(1,1)+1).degree=n-1;
    if n>=2;
        P(tline(1,1)+1).neibor=tline(1,2:n)+1;
    else
        P(tline(1,1)+1).neibor=[];
    end
end

fclose(fid);

for i=1:N;
    K=P(i).neibor;
    [x,y]=size(K);
    for j=1:y;
        if ~ismember(i,P(K(1,j)).neibor);
            P(K(1,j)).neibor=[P(K(1,j)).neibor i];
        end
    end
end

for n=100:100:10000;
    for time=1:5;
        EG(time,n);
        disp(['time= ' num2str(time) ' n= ' num2str(n)]);
    end
end
        


end

