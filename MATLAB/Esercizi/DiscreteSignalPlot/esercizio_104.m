clear all
clc
figure(1);

x1 = [1 -2 3 4 5 6];
n = [0 1 2 3 4 5];

x2 = [1 3 5 7 9 3];

subplot(2, 2, 1);
stem(n, x1);

subplot(2, 2, 4);
stem(n, x2);