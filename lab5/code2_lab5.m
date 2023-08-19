clc;
clear all; close all;

x = [1 5 3 7 3 8 5];
inp = input('Enter the index: '); l = length(x);
y = sym('z'); zt_l = 0;
zt_r = 0;

for i = 1:l
if i >= inp
zt_r = zt_r + x(i) * y^(inp - i); else
zt_l = zt_l + x(i) * y^((-1) * (i - inp));
end
end

output = zt_l + zt_r; disp('Output = '); disp(output);
