function average_degree(a)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
N=10000;

S=zeros(1,N);

for time=1:10;
    path=['D:\\ZY\\evolution\\' num2str(time) '\\' num2str(a) '\\result.txt'];
    temp=dlmread(path);
    S=S+temp;
end

S=S/10;



dlmwrite(['D:\\ZY\\evolution\\Result\\' num2str(a) '.txt'],S');

end

