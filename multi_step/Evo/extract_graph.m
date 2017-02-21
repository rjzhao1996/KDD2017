function extract_graph()
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
global P;
global N;
N=10000;

path='D:\\ZY\\Evo_graph.txt';

fid=fopen(path,'r');

k=1;
while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    [m,n]=size(tline);
    P(k).degree=tline(1);
    if n>=2;
        P(k).neibor=tline(1,2:n);
    else
        P(k).neibor=[];
    end
    k=k+1;
end

fclose(fid);

for i=1:N;
    K=P(i).neibor;
    [x,y]=size(K);
    for j=1:y;
        if ~any(P(K(1,j)).neibor==i);
            P(K(1,j)).neibor=[P(K(1,j)).neibor i];
        end
    end
end

for n=100:100:1000;
    for time=1:5;
        EG(time,n);
        disp(['time= ' num2str(time) ' n= ' num2str(n)]);
    end
end
        


end

