function graph_maker1()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
path='D:\\ZY\\FP\\';
x_ace=dlmread([path 'x_ace.txt']);
x_goo=dlmread([path 'x_goo.txt']);
x_er=dlmread([path 'x_er.txt']);
x_evo0=dlmread([path 'evo\\x_evo0.txt']);
x_evo1=dlmread([path 'evo\\x_evo1.txt']);

y_ace=dlmread([path 'y_ace.txt']);
y_goo=dlmread([path 'y_goo.txt']);
y_er=dlmread([path 'y_er.txt']);
y_evo0=dlmread([path 'evo\\y_evo0.txt']);
y_evo1=dlmread([path 'evo\\y_evo1.txt']);

y_ace=y_ace-0.0844;

x_er=x_er-0.45;


plot(x_ace,y_ace,'-k+');


hold on;



plot(x_goo,y_goo,'-b*');



plot(x_er,y_er,'-rs');




plot(x_evo0,y_evo0,'-yd');




plot(x_evo1,y_evo1,'-go');


xlim([0 10]);
ylim([0 1.1]);
legend('Acemap','Google','ER','Evo_0','Evo_1','Location','SouthEast');

hold off;
end

