function collection()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
d=4;
path_ace=['D:\\ZY\\acemap\\result' num2str(d) '\\'];

path_goo=['D:\\ZY\\Google\\result' num2str(d) '\\'];
path_er=['D:\\ZY\\ER\\result' num2str(d) '\\'];
path_evo=['D:\\ZY\\Evo\\result' num2str(d) '\\'];


fid_ace=fopen(['D:\\ZY\\acemap\\result' num2str(d) '.txt'],'w');
fid_goo=fopen(['D:\\ZY\\Google\\result' num2str(d) '.txt'],'w');
fid_er=fopen(['D:\\ZY\\ER\\result' num2str(d) '.txt'],'w');
fid_evo=fopen(['D:\\ZY\\Evo\\result' num2str(d) '.txt'],'w');

for i=1000:100:10000;
    temp=[];
    for j=1:5;
        a=dlmread([path_ace num2str(j) '\\' num2str(i) '.txt']);
        temp=[temp a];
    end
    fprintf(fid_ace,'%d ',temp);
    fprintf(fid_ace,'\r\n');
end
fclose(fid_ace);

for i=1000:100:10000;
    temp=[];
    for j=1:5;
        a=dlmread([path_goo num2str(j) '\\' num2str(i) '.txt']);
        temp=[temp a];
    end
    fprintf(fid_goo,'%d ',temp);
    fprintf(fid_goo,'\r\n');
end
fclose(fid_goo);

for i=1000:100:10000;
    temp=[];
    for j=1:5;
        a=dlmread([path_er num2str(j) '\\' num2str(i) '.txt']);
        temp=[temp a];
    end
    fprintf(fid_er,'%d ',temp);
    fprintf(fid_er,'\r\n');
end
fclose(fid_er);

for i=1000:100:10000;
    temp=[];
    for j=1:5;
        a=dlmread([path_evo num2str(j) '\\' num2str(i) '.txt']);
        temp=[temp a];
    end
    fprintf(fid_evo,'%d ',temp);
    fprintf(fid_evo,'\r\n');
end
fclose(fid_evo);



end

