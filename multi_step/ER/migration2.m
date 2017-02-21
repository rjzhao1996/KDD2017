function migration2(time,n)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
T=100;
Ra=zeros(1,T);

path=['D:\\ZY\\ER\\graph\\' num2str(time) '\\' num2str(n) '.txt'];

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
    for step=1:floor((N^(1/2))*log(N));
        [x,y]=size(P(current).neibor);
        next_id=unidrnd(y);
        temp=P(current).neibor(1,next_id);
        current=temp;
        if P(current).degree==max_degree;
            Ra(1,t)=1;
            break;
        end
        %if step==floor((N^(1/2)));
            %Ra(1,t)=P(current).degree;
        %end
    end
end


ra=sum(Ra)/T;
%{
re=0;
for i=1:N;
    if P(i).degree<ra;
        re=re+1;
    end
end

re=re/N;
%}




dlmwrite(['D:\\ZY\\ER\\result2\\' num2str(time) '\\' num2str(n) '.txt'],ra);

disp(['time= ' num2str(time) ' n= ' num2str(n)]);

end

