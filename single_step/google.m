function google()
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
path='D:\\ZY\\Google_graph.txt';
fid=fopen(path,'r');


N=875713;

for i=1:N;
    Point(i).degree=0;
    Point(i).neibor=[];
end

while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    Point(tline(1)).degree=Point(tline(1)).degree+1;
    Point(tline(2)).degree=Point(tline(2)).degree+1;
    Point(tline(1)).neibor=[Point(tline(1)).neibor tline(2)];
    Point(tline(2)).neibor=[Point(tline(2)).neibor tline(1)];
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

dlmwrite('D:\\ZY\\google_result.txt',D');


end

