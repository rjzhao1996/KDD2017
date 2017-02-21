function small_points(time,a)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

path=['D:\\ZY\\evolution\\' num2str(time) '\\' num2str(a) '\\small_point.txt'];

T=100000;

for i=1:T;
    P(i).degree=0;
    P(i).neibor=[];
end


for t=2:T;
    r=rand();
    if r<a/100;
       dd=2*t-1;
       other=2/dd;
       key=rand();
       k=floor(key/other)+1;
       if k<t;%连非自身点
          P(t).degree=P(t).degree+1;
          P(k).degree=P(k).degree+1;
          P(t).neibor=[P(t).neibor k];
          P(k).neibor=[P(k).neibor t];
       else
           P(k).degree=P(k).degree+1;
       end
    else
        key=rand();
        temp=0;
        for j=1:t-1;
            temp=temp+P(j).degree;
            if key<temp/(2*t-3);
                k=j;
                break;
            end
            if j==t-1;
                k=t;
            end
        end
        if k<t;%连非自身点
          P(t).degree=P(t).degree+1;
          P(k).degree=P(k).degree+1;
          P(t).neibor=[P(t).neibor k];
          P(k).neibor=[P(k).neibor t];
       else
           P(k).degree=P(k).degree+1;
        end
    end
end

fout=fopen(path,'w');
for i=1:T;
    fprintf(fout,'%d ',P(i).degree);
    fprintf(fout,'%d ',P(i).neibor);
    fprintf(fout,'\r\n');
end

fclose(fout);
disp(['time= ' num2str(time) ' a= ' num2str(a/100)]);

end

