function acemap()
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明

path='D:\\ZY\\Acemap.txt';
fid=fopen(path,'r');


i=1;

while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    [m,n]=size(tline);
    Point(i).degree=n-1;
    if n>=2;
        Point(i).neibor=tline(1,2:n)+1;
    else
        Point(i).neibor=[];
    end
    i=i+1;
end


N=i-1;

for i=1:N;
    K=Point(i).neibor;
    [x,y]=size(K);
    for j=1:y;
        if ~any(Point(K(1,j)).neibor==i);
            Point(K(1,j)).neibor=[Point(K(1,j)).neibor i];
        end
    end
end

D=zeros(1,N);

for j=1:N;
    pself=Point(j).degree;
    if pself==0;
        D(1,j)=1;
        continue;
    end
    K=Point(j).neibor;
    [m,n]=size(K);
    pneibor=0;
    for i=1:n;
        pneibor=pneibor+Point(K(1,i)).degree;
    end
    pneibor=pneibor/n;
    
    D(1,j)=pneibor/pself;
end

dlmwrite('D:\\ZY\\acemap_result.txt',D');
end

