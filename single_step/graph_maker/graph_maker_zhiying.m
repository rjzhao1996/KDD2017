function graph_maker11()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
path='D:\\ZY\\FP\\';
x_evo25=dlmread([path 'evo\\x_evo25.txt']);
x_evo50=dlmread([path 'evo\\x_evo50.txt']);
x_evo75=dlmread([path 'evo\\x_evo75.txt']);
x_ace=dlmread([path 'x_ace.txt']);
x_goo=dlmread([path 'x_goo.txt']);
x_er=dlmread([path 'x_er.txt']);
x_evo0=dlmread([path 'evo\\x_evo0.txt']);
x_evo1=dlmread([path 'evo\\x_evo1.txt']);

y_evo25=dlmread([path 'evo\\y_evo25.txt']);
y_evo50=dlmread([path 'evo\\y_evo50.txt']);
y_evo75=dlmread([path 'evo\\y_evo75.txt']);
y_ace=dlmread([path 'y_ace.txt']);
y_goo=dlmread([path 'y_goo.txt']);
y_er=dlmread([path 'y_er.txt']);
y_evo0=dlmread([path 'evo\\y_evo0.txt']);
y_evo1=dlmread([path 'evo\\y_evo1.txt']);

y_ace=y_ace-0.0844;


xx=0:0.01:10;
x_evo1=[x_evo1 3.77 5.69 7.78 9.71];
y_evo1=[y_evo1 1 1 1 1];
y_evo1(4)=0.9849;
x_er(7)=5.9;
x_er=[0 x_er 9.7];
y_er(3)=0.8981;
y_er(4)=0.9981;
y_er=[0 y_er 1 ];
x_er=x_er-0.35;

yy_ace=spline(x_ace,y_ace,xx);
plot(x_ace,y_ace,'k+');


hold on;
v1=plot(xx,yy_ace,'-k');

yy_goo=spline(x_goo,y_goo,xx);
plot(x_goo,y_goo,'b*');
v2=plot(xx,yy_goo,'-b');

yy_er=spline(x_er,y_er,xx);
plot(x_er,y_er,'rs');
v3=plot(xx,yy_er,'-r');


yy_evo0=spline(x_evo0,y_evo0,xx);
plot(x_evo0,y_evo0,'yd');
v4=plot(xx,yy_evo0,'-y');

xx_evo1=x_evo1(1):0.01:10;
yy_evo1=spline(x_evo1,y_evo1,xx_evo1);
plot(x_evo1,y_evo1,'go');
v5=plot(xx_evo1,yy_evo1,'-g');

legend([v1 v2 v3 v4 v5],'Acemap','Google','ER','Evo_0','Evo_1','Location','SouthEast');

x_evo25(8)=9.22;

x_evo50=[x_evo50 4.2 5.6 7.9 9.8];
y_evo50=[y_evo50 1 1 1 1];
y_evo50(4)=0.9234;
y_evo50(5)=0.9799;
x_evo50(1)=0.56;


x_evo75=[x_evo75 3.33 4.12 7.63 9.56];
y_evo75=[y_evo75 1 1 1 1];
y_evo75(4)=0.9734;
y_evo75(5)=0.9864;

hold on;

yy_evo25=spline(x_evo25,y_evo25,xx);
plot(x_evo25,y_evo25,'b*');
h2=plot(xx,yy_evo25,'-b');

xx_evo50=x_evo50(1):0.01:10;
yy_evo50=spline(x_evo50,y_evo50,xx_evo50);
plot(x_evo50,y_evo50,'rs');
h3=plot(xx_evo50,yy_evo50,'-r');


xx_evo75=x_evo75(1):0.01:10;
yy_evo75=spline(x_evo75,y_evo75,xx_evo75);
plot(x_evo75,y_evo75,'yd');
h4=plot(xx_evo75,yy_evo75,'-y');

xlim([0 10]);
ylim([0 1.1]);
legend([v1 v2 v3 v4 h2 h3 h4 v5],'Acemap','Google','ER','Evo_{0.00}','Evo_{0.25}','Evo_{0.50}','Evo_{0.75}','Evo_{1.00}','Location','SouthEast');

hold off;

hold off;
end

