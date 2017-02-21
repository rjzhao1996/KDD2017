function rw_graph()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


d=3;
path_ace=['D:\\ZY\\acemap\\result' num2str(d) '\\'];
path_goo=['D:\\ZY\\Google\\result' num2str(d) '\\'];
path_er=['D:\\ZY\\ER\\result' num2str(d) '\\'];
path_evo=['D:\\ZY\\Evo\\result' num2str(d) '\\'];

X=1000:100:10000;

Y_ace=[];
Y_goo=[];
Y_er=[];
Y_evo=[];

for i=1000:100:10000;
    temp=[];
    for j=1:5;
        a=dlmread([path_ace num2str(j) '\\' num2str(i) '.txt']);
        temp=[temp log(1/a)];
    end
    Y_ace=[Y_ace sum(temp)/5];
end

for i=1000:100:10000;
    temp=[];
    for j=1:5;
        a=dlmread([path_goo num2str(j) '\\' num2str(i) '.txt']);
        temp=[temp log(1/a)];
    end
    Y_goo=[Y_goo sum(temp)/5];
end

for i=1000:100:10000;
    temp=[];
    for j=1:5;
        a=dlmread([path_er num2str(j) '\\' num2str(i) '.txt']);
        temp=[temp log(1/a)];
    end
    Y_er=[Y_er sum(temp)/5];
end

for i=1000:100:10000;
    temp=[];
    for j=1:5;
        a=dlmread([path_evo num2str(j) '\\' num2str(i) '.txt']);
        temp=[temp log(1/a)];
    end
    Y_evo=[Y_evo sum(temp)/5];
end
m=4;


%p_ace=polyfit(X,Y_ace,m);
plot(X,Y_ace,'-k+','MarkerSize',8.0);
hold on;
%h1=plot(X,polyval(p_ace,X),'k');

%p_goo=polyfit(X,Y_goo,m);
plot(X,Y_goo,'-b*','MarkerSize',8.0);
%h2=plot(X,polyval(p_goo,X),'b');

%p_er=polyfit(X,Y_er,m);
plot(X,Y_er,'-rs','MarkerSize',8.0);
%h3=plot(X,polyval(p_er,X),'r')

%p_evo=polyfit(X,Y_evo,m);
plot(X,Y_evo,'-gd','MarkerSize',8.0);
%h4=plot(X,polyval(p_evo,X),'g');

legend('Acemap','Google','ER','Evo');

hold off;
end

