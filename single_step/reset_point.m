function reset_point()
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明

fid=fopen('D:\\ZY\\Google.txt','r');
fout=fopen('D:\\ZY\\Google_graph.txt','w');

known=zeros(1,1000000);
id=1;

while ~feof(fid);
    tline=fgetl(fid);
    tline=str2num(tline);
    if known(1,tline(1)+1)==0;
        known(1,tline(1)+1)=id;
        id=id+1;
    end
    if known(1,tline(2)+1)==0;
        known(1,tline(2)+1)=id;
        id=id+1;
    end
    fprintf(fout,'%d %d\r\n',[known(1,tline(1)+1) known(1,tline(2)+1)]);
end

fclose(fid);
fclose(fout);

end

