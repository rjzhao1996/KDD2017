function migration1(time,n)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
T=100;
Ra=zeros(1,T);

path=['D:\\ZY\\Evo\\graph\\' num2str(time) '\\' num2str(n) '.txt'];

fid=fopen(path,'r');

k=1;
max_degree=0;
while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    [x,y]=size(tline);
    P(k).degree=tline(1);
    if max_degree<tline(1);
        max_degree=tline(1);
    end
    if y>=2;
       P(k).neibor=tline(1,2:y);
    end
    k=k+1;
end

fclose(fid);
N=k-1;

for t=1:T;
    current=unidrnd(N);
    if isempty(P(current).neibor);
        Ra(1,t)=0;
        continue;
    end
    for step=1:N*10;
        [x,y]=size(P(current).neibor);
        next_id=unidrnd(y);
        temp=P(current).neibor(1,next_id);
        current=temp;
        if P(current).degree==max_degree;
            Ra(1,t)=1/step;
            break;
        end
    end
end

ra=sum(Ra)/T;

dlmwrite(['D:\\ZY\\Evo\\result1\\' num2str(time) '\\' num2str(n) '.txt'],ra);

disp(['time= ' num2str(time) ' n= ' num2str(n)]);

end

