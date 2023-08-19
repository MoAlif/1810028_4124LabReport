clc;
clear all;
x=[1,2];
h=[1,2,4];
m=length(x);
m1=length(h);
subplot(2,2,1);
stem(x);
xlabel('n values');
ylabel('Amplitude');
title(' x(n) ');
subplot(2,2,2);
stem(h);
xlabel('n values');
ylabel('Amplitude');
title(' h(n) ');
X=[x,zeros(1,m)];
H=[h,zeros(1,m1)];
for i=1:(m1+m-1)
y(i)=0;
for j=1:m
if(i-j+1)>0
y(i)=y(i)+X(j)*H(i-j+1);
end
end
end
subplot(2,2,3);
stem(y);
xlabel('n values');
ylabel('Amplitude');
title(' y- output ');
