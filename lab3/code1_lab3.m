clc;
clear all;
x=input('Enter the input signal');
h=fliplr(x);
z=[];
for i=1:length(x)
 g=h.*x(i);
 z=[z;g];
end
[r c]=size(z);
k=r+c;
t=2;
y=[];
cd=0;
while(t<=k)
 for i=1:r
 for j=1:c
 if(i+j==t)
 cd=cd+z(i,j);
 end
 end
end
t=t+1;
y=[y cd];
cd=0;
end
disp(y);
subplot(2,1,1)
stem(xcorr(x));
title('Auto correlation')
subplot(2,1,2);
stem(y);
title('Output-y')
