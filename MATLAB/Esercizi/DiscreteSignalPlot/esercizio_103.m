clear all
clc
figure(1);

x1 = [1 -2 3 4 5 6];
n = [0 1 2 3 4 5];

stem(n, x1);				% traccio il primo segnale

hold on

x2 = [1 3 5 7 9 3];

stem(n, x2);