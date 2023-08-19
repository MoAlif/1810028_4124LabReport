clc; clear all; close all;

x = [1 5 3 7 3 8 5];
l = length(x); y = sym('z'); zt_l = 0;
zt_r = 0;

for i = 1:l
zt_l = zt_l + x(i) * y^(-i);
end

for i = 1:l
zt_r = zt_r + x(i) * y^(i);
end

disp('Left = '); disp(zt_l);

disp('Right = '); disp(zt_r);
