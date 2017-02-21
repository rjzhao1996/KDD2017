function data()
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

path='D:\\ZY\\FP\\';

ace=dlmread([path 'acemap_result.txt']);
goo=dlmread([path 'google_result.txt']);
er=dlmread([path 'er_result.txt']);

evo0=dlmread([path 'evo\\0.txt']);
evo25=dlmread([path 'evo\\25.txt']);
evo50=dlmread([path 'evo\\50.txt']);
evo75=dlmread([path 'evo\\75.txt']);
evo1=dlmread([path 'evo\\100.txt']);

X_ace=sort((ace'));
X_goo=sort((goo'));
X_er=sort((er'));

X_evo0=sort((evo0'));
X_evo25=sort((evo25'));
X_evo50=sort((evo50'));
X_evo75=sort((evo75'));
X_evo1=sort((evo1'));

clear ace;
clear goo;
clear er;
clear evo0;
clear evo25;
clear evo50;
clear evo75;
clear evo1;

[m,n]=size(X_ace);
Y_ace=zeros(m,n);
for i=1:n;
    Y_ace(1,i)=sum(X_ace<=X_ace(1,i))/n;
end

[m,n]=size(X_goo);
Y_goo=zeros(m,n);
for i=1:n;
    Y_goo(1,i)=sum(X_goo<=X_goo(1,i))/n;
end

[m,n]=size(X_er);
Y_er=zeros(m,n);
for i=1:n;
    Y_er(1,i)=sum(X_er<=X_er(1,i))/n;
end

[m,n]=size(X_evo0);
Y_evo0=zeros(m,n);
for i=1:n;
    Y_evo0(1,i)=sum(X_evo0<=X_evo0(1,i))/n;
end

[m,n]=size(X_evo25);
Y_evo25=zeros(m,n);
for i=1:n;
    Y_evo25(1,i)=sum(X_evo25<=X_evo25(1,i))/n;
end

[m,n]=size(X_evo50);
Y_evo50=zeros(m,n);
for i=1:n;
    Y_evo50(1,i)=sum(X_evo50<=X_evo50(1,i))/n;
end

[m,n]=size(X_evo75);
Y_evo75=zeros(m,n);
for i=1:n;
    Y_evo75(1,i)=sum(X_evo75<=X_evo75(1,i))/n;
end

[m,n]=size(X_evo1);
Y_evo1=zeros(m,n);
for i=1:n;
    Y_evo1(1,i)=sum(X_evo1<=X_evo1(1,i))/n;
end

dlmwrite([path 'BY_ace.txt'],Y_ace);
dlmwrite([path 'BY_goo.txt'],Y_goo);
dlmwrite([path 'BY_er.txt'],Y_er);
dlmwrite([path 'evo\\BY_evo0.txt'],Y_evo0);
dlmwrite([path 'evo\\BY_evo25.txt'],Y_evo25);
dlmwrite([path 'evo\\BY_evo50.txt'],Y_evo50);
dlmwrite([path 'evo\\BY_evo75.txt'],Y_evo75);
dlmwrite([path 'evo\\BY_evo1.txt'],Y_evo1);



end

