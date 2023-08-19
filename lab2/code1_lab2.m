clc;
clear;
close all;
x=input('Enter the first array: ');
l1=length(x);
h=input('Enter the second array: ');
l2=length(h);
z=zeros(1,l1);
for i=1:l1
for j=1:l1
k=mod(i-j,l1)+1;
z(i)=z(i)+x(j)*h(k);
end
end
disp('Input Signals: ')
disp(x);
disp(h);
disp('Circular Convolution: ');
disp(z);
stem(z);