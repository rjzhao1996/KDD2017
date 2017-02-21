function EG(time,n)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
global P;
global N;


path=['D:\\ZY\\youtube\\graph\\' num2str(time) '\\' num2str(n) '.txt'];


known=zeros(1,N);

tail=2;
head=1;
Q=zeros(1,n);
while head==1;%从一个非孤立点开始
    Q(1,head)=unidrnd(N);
    if isempty(P(Q(1,head)).neibor);
        continue;
    else
        break;
    end
end

k=1;
known(1,Q(1,head))=k;
k=k+1;

while tail<=n;
    if head==tail;
        for i=1:N;
            if ~isempty(P(i).neibor) && known(1,i)==0;
                Q(1,tail)=i;
                tail=tail+1;
                known(1,i)=k;
                k=k+1;
                break;
            end
            
        end
    end
    q=P(Q(1,head)).neibor;
    [l,ll]=size(q);
    for i=1:ll;
        if known(1,q(1,i))==0;
            if tail>n;
                break;
            end
            known(1,q(1,i))=k;
            k=k+1;
            Q(1,tail)=q(1,i);
            tail=tail+1;
           
        end
    end
    head=head+1;
end

for i=1:n;
    G(i).degree=0;
    G(i).neibor=[];
end

for i=1:N;
    if known(1,i)~=0;
        id=known(1,i);
        [x,y]=size(P(i).neibor);
        for j=1:y;
            if known(1,P(i).neibor(1,j))~=0;
                G(id).neibor=[G(id).neibor known(1,P(i).neibor(1,j))];
                G(id).degree=G(id).degree+1;
            end
        end
    end
end

fout=fopen(path,'w');
for i=1:n;
    fprintf(fout,'%d ',G(i).degree);
    fprintf(fout,'%d ',G(i).neibor);
    fprintf(fout,'\r\n');
end

fclose(fout);
    
end

