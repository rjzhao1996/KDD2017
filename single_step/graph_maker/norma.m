function norma()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
path='D:\\ZY\\FP\\';

ace=dlmread([path 'acemap_result.txt']);
goo=dlmread([path 'google_result.txt']);
er=dlmread([path 'er_result.txt']);

evo0=dlmread([path 'evo\\0.txt']);
evo1=dlmread([path 'evo\\100.txt']);
evo25=dlmread([path 'evo\\25.txt']);
evo50=dlmread([path 'evo\\50.txt']);
evo75=dlmread([path 'evo\\75.txt']);


Y_ace=dlmread([path 'BY_ace.txt']);
Y_goo=dlmread([path 'BY_goo.txt']);
Y_er=dlmread([path 'BY_er.txt']);

Y_evo0=dlmread([path 'evo\\BY_evo0.txt']);
Y_evo1=dlmread([path 'evo\\BY_evo1.txt']);
Y_evo25=dlmread([path 'evo\\BY_evo25.txt']);
Y_evo50=dlmread([path 'evo\\BY_evo50.txt']);
Y_evo75=dlmread([path 'evo\\BY_evo75.txt']);
Y_er=Y_er';


X_ace=sort((ace'));
X_goo=sort((goo'));
X_er=sort((er'));

X_evo0=sort((evo0'));
X_evo1=sort((evo1'));
X_evo25=sort((evo25'));
X_evo50=sort((evo50'));
X_evo75=sort((evo75'));

[m,n]=size(X_ace);
x_ace=[];
y_ace=[];
x_ace=[x_ace X_ace(1)];
y_ace=[y_ace Y_ace(1)];
index=1;
for i=2:n-1;
    if X_ace(i+1)>=index && X_ace(i)<=index;
        if abs(X_ace(i+1)-index)<abs(X_ace(i)-index);
            x_ace=[x_ace X_ace(i+1)];
            y_ace=[y_ace Y_ace(i+1)];
        else
            x_ace=[x_ace X_ace(i)];
            y_ace=[y_ace Y_ace(i)];
        end
        index=index+1;
        if index==11;
            break;
        end
    end
end
x_ace=[x_ace X_ace(n)];
y_ace=[y_ace Y_ace(n)];
dlmwrite([path 'x_ace.txt'],x_ace);
dlmwrite([path 'y_ace.txt'],y_ace);


[m,n]=size(X_goo);
x_goo=[];
y_goo=[];
x_goo=[x_goo X_goo(1)];
y_goo=[y_goo Y_goo(1)];
index=1;
for i=2:n-1;
    if X_goo(i+1)>=index && X_goo(i)<=index;
        if abs(X_goo(i+1)-index)<abs(X_goo(i)-index);
            x_goo=[x_goo X_goo(i+1)];
            y_goo=[y_goo Y_goo(i+1)];
        else
            x_goo=[x_goo X_goo(i)];
            y_goo=[y_goo Y_goo(i)];
        end
        index=index+1;
        if index==11;
            break;
        end
    end
end
x_goo=[x_goo X_goo(n)];
y_goo=[y_goo Y_goo(n)];
dlmwrite([path 'x_goo.txt'],x_goo);
dlmwrite([path 'y_goo.txt'],y_goo);



[m,n]=size(X_er);
x_er=[];
y_er=[];
x_er=[x_er X_er(1)];
y_er=[y_er Y_er(1)];
index=1;
for i=2:n-1;
    if X_er(i+1)>=index && X_er(i)<=index;
        if abs(X_er(i+1)-index)<abs(X_er(i)-index);
            x_er=[x_er X_er(i+1)];
            y_er=[y_er Y_er(i+1)];
        else
            x_er=[x_er X_er(i)];
            y_er=[y_er Y_er(i)];
        end
        index=index+1;
        if index==11;
            break;
        end
    end
end
x_er=[x_er X_er(n)];
y_er=[y_er Y_er(n)];
dlmwrite([path 'x_er.txt'],x_er);
dlmwrite([path 'y_er.txt'],y_er);


[m,n]=size(X_evo0);
x_evo0=[];
y_evo0=[];
x_evo0=[x_evo0 X_evo0(1)];
y_evo0=[y_evo0 Y_evo0(1)];
index=1;
for i=2:n-1;
    if X_evo0(i+1)>=index && X_evo0(i)<=index;
        if abs(X_evo0(i+1)-index)<abs(X_evo0(i)-index);
            x_evo0=[x_evo0 X_evo0(i+1)];
            y_evo0=[y_evo0 Y_evo0(i+1)];
        else
            x_evo0=[x_evo0 X_evo0(i)];
            y_evo0=[y_evo0 Y_evo0(i)];
        end
        index=index+1;
        if index==11;
            break;
        end
    end
end
x_evo0=[x_evo0 X_evo0(n)];
y_evo0=[y_evo0 Y_evo0(n)];
dlmwrite([path 'evo\\x_evo0.txt'],x_evo0);
dlmwrite([path 'evo\\y_evo0.txt'],y_evo0);


[m,n]=size(X_evo1);
x_evo1=[];
y_evo1=[];
x_evo1=[x_evo1 X_evo1(1)];
y_evo1=[y_evo1 Y_evo1(1)];
index=1;
for i=2:n-1;
    if X_evo1(i+1)>=index && X_evo1(i)<=index;
        if abs(X_evo1(i+1)-index)<abs(X_evo1(i)-index);
            x_evo1=[x_evo1 X_evo1(i+1)];
            y_evo1=[y_evo1 Y_evo1(i+1)];
        else
            x_evo1=[x_evo1 X_evo1(i)];
            y_evo1=[y_evo1 Y_evo1(i)];
        end
        index=index+1;
        if index==11;
            break;
        end
    end
end
x_evo1=[x_evo1 X_evo1(n)];
y_evo1=[y_evo1 Y_evo1(n)];
dlmwrite([path 'evo\\x_evo1.txt'],x_evo1);
dlmwrite([path 'evo\\y_evo1.txt'],y_evo1);


[m,n]=size(X_evo25);
x_evo25=[];
y_evo25=[];
x_evo25=[x_evo25 X_evo25(1)];
y_evo25=[y_evo25 Y_evo25(1)];
index=1;
for i=2:n-1;
    if X_evo25(i+1)>=index && X_evo25(i)<=index;
       if abs(X_evo25(i+1)-index)<abs(X_evo25(i)-index);
            x_evo25=[x_evo25 X_evo25(i+1)];
            y_evo25=[y_evo25 Y_evo25(i+1)];
        else
            x_evo25=[x_evo25 X_evo25(i)];
            y_evo25=[y_evo25 Y_evo25(i)];
        end
        index=index+1;
        if index==11;
            break;
        end
    end
end
x_evo25=[x_evo25 X_evo25(n)];
y_evo25=[y_evo25 Y_evo25(n)];
dlmwrite([path 'evo\\x_evo25.txt'],x_evo25);
dlmwrite([path 'evo\\y_evo25.txt'],y_evo25);


[m,n]=size(X_evo50);
x_evo50=[];
y_evo50=[];
x_evo50=[x_evo50 X_evo50(1)];
y_evo50=[y_evo50 Y_evo50(1)];
index=1;
for i=2:n-1;
    if X_evo50(i+1)>=index && X_evo50(i)<=index;
        if abs(X_evo50(i+1)-index)<abs(X_evo50(i)-index);
            x_evo50=[x_evo50 X_evo50(i+1)];
            y_evo50=[y_evo50 Y_evo50(i+1)];
        else
            x_evo50=[x_evo50 X_evo50(i)];
            y_evo50=[y_evo50 Y_evo50(i)];
        end
        index=index+1;
        if index==11;
            break;
        end
    end
end
x_evo50=[x_evo50 X_evo50(n)];
y_evo50=[y_evo50 Y_evo50(n)];
dlmwrite([path 'evo\\x_evo50.txt'],x_evo50);
dlmwrite([path 'evo\\y_evo50.txt'],y_evo50);




[m,n]=size(X_evo75);
x_evo75=[];
y_evo75=[];
x_evo75=[x_evo75 X_evo75(1)];
y_evo75=[y_evo75 Y_evo75(1)];
index=1;
for i=2:n-1;
    if X_evo75(i+1)>=index && X_evo75(i)<=index;
        if abs(X_evo75(i+1)-index)<abs(X_evo75(i)-index);
            x_evo75=[x_evo75 X_evo75(i+1)];
            y_evo75=[y_evo75 Y_evo75(i+1)];
        else
            x_evo75=[x_evo75 X_evo75(i)];
            y_evo75=[y_evo75 Y_evo75(i)];
        end
        index=index+1;
        if index==11;
            break;
        end
    end
end
x_evo75=[x_evo75 X_evo75(n)];
y_evo75=[y_evo75 Y_evo75(n)];
dlmwrite([path 'evo\\x_evo75.txt'],x_evo75);
dlmwrite([path 'evo\\y_evo75.txt'],y_evo75);



end

