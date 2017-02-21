function big_points(time,a)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

path=['D:\\ZY\\evolution\\' num2str(time) '\\' num2str(a) '\\small_point.txt'];


N=10000;

for i=1:N;
    P(i).degree=0;
    P(i).neibor=[];
end

fid=fopen(path,'r');

k=1;
while ~feof(fid);
    for i=1:10;
        tline=fgetl(fid);
        tline=str2num(tline);
        [m,n]=size(tline);
        P(k).degree=P(k).degree+tline(1)-(n-1);%�Ի��ӳ�
        if n>=2;
            for j=2:n;
                temp=ceil(tline(j)/10);
                if temp==k;%����������
                    P(k).degree=P(k).degree+1;
                elseif ~any(P(k).neibor==temp);
                    P(k).neibor=[P(k).neibor temp];
                    
                    P(k).degree=P(k).degree+1;
                elseif any(P(k).neibor==temp);
                    P(k).degree=P(k).degree+1;
                end
            end
        end
    end
    k=k+1;
end

fclose(fid);

path=['D:\\ZY\\evolution\\' num2str(time) '\\' num2str(a) '\\big_point.txt'];
fout=fopen(path,'w');
for i=1:N;
    fprintf(fout,'%d ',P(i).degree);
    fprintf(fout,'%d ',P(i).neibor);
    fprintf(fout,'\r\n');
end

fclose(fout);
disp(['time= ' num2str(time) ' a= ' num2str(a/100)]);

end

