function graph_maker22()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
path='D:\\ZY\\FP\\';
x_evo25=dlmread([path 'evo\\x_evo25.txt']);
x_evo50=dlmread([path 'evo\\x_evo50.txt']);
x_evo75=dlmread([path 'evo\\x_evo75.txt']);
x_evo0=dlmread([path 'evo\\x_evo0.txt']);
x_evo1=dlmread([path 'evo\\x_evo1.txt']);

y_evo25=dlmread([path 'evo\\y_evo25.txt']);
y_evo50=dlmread([path 'evo\\y_evo50.txt']);
y_evo75=dlmread([path 'evo\\y_evo75.txt']);
y_evo0=dlmread([path 'evo\\y_evo0.txt']);
y_evo1=dlmread([path 'evo\\y_evo1.txt']);

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

x_evo1=[x_evo1 3.77 5.69 7.78 9.71];
y_evo1=[y_evo1 1 1 1 1];
y_evo1(4)=0.9849;

xx=0:0.01:10;
yy_evo0=spline(x_evo0,y_evo0,xx);
plot(x_evo0,y_evo0,'k+');


hold on;
h1=plot(xx,yy_evo0,'-k');

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

xx_evo1=x_evo1(1):0.01:10;
yy_evo1=spline(x_evo1,y_evo1,xx_evo1);
plot(x_evo1,y_evo1,'go');
h5=plot(xx_evo1,yy_evo1,'-g');

xlim([0 10]);
ylim([0 1.1]);
legend([h1 h2 h3 h4 h5],'Evo_0','Evo_{25}','Evo_{50}','Evo_{75}','Evo_{100}','Location','SouthEast');

hold off;

end

