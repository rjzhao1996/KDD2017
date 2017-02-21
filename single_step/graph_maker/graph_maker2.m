function graph_maker2()
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

x_evo50=[x_evo50 9.8];
y_evo50=[y_evo50 1];

x_evo75=[x_evo75 9.56];
y_evo75=[y_evo75 1];

x_evo1=[x_evo1 8.11];
y_evo1=[y_evo1 1];



plot(x_evo0,y_evo0,'-yd');

hold on;
plot(x_evo25,y_evo25,'-k+');

plot(x_evo50,y_evo50,'-b*');
plot(x_evo75,y_evo75,'-rs');

plot(x_evo1,y_evo1,'-go');
xlim([0 10]);

legend('Evo_0','Evo_{25}','Evo_{50}','Evo_{75}','Evo_1','Location','SouthEast');

hold off;

end

