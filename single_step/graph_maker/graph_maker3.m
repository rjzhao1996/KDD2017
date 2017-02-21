function graph_maker3()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
path='D:\\ZY\\FP\\';
x_evo0=dlmread([path 'evo\\0_degree.txt']);
x_evo1=dlmread([path 'evo\\100_degree.txt']);
x_evo25=dlmread([path 'evo\\25_degree.txt']);
x_evo50=dlmread([path 'evo\\50_degree.txt']);
x_evo75=dlmread([path 'evo\\75_degree.txt']);


k=5;
X=1:k:10000;

plot(X,x_evo0(1:k:10000,:)','-yd');
hold on;
plot(X,x_evo25(1:k:10000,:)','-b*');
plot(X,x_evo50(1:k:10000,:)','-rs');
plot(X,x_evo75(1:k:10000,:)','-k+');
plot(X,x_evo1(1:k:10000,:)','-go');
xlim([0 100])
legend('Evo_0','Evo_{25}','Evo_{50}','Evo_{75}','Evo_{100}');

hold off;
end

