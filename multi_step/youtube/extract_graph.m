function extract_graph()
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
global P;
global N;
N=1134890;

path='D:\\ZY\\youtube_graph.txt';

fid=fopen(path,'r');

for i=1:N;
    P(i).degree=0;
    P(i).neibor=[];
end




while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    
    P(tline(1)).degree=P(tline(1)).degree+1;
    P(tline(2)).degree=P(tline(2)).degree+1;
    P(tline(1)).neibor=[P(tline(1)).neibor tline(2)];
    P(tline(2)).neibor=[P(tline(2)).neibor tline(1)];
end

fclose(fid);


for n=1000:100:10000;
    for time=1:5;
        EG(time,n);
        disp(['time= ' num2str(time) ' n= ' num2str(n)]);
    end
end
        


end

