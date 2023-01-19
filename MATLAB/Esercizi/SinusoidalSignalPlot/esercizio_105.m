% tracciare la sinusoidale
clc
clear all
close all

A = 2;
f = 6;
t = 0 : 0.01 : 1;			% >> array da 0 a 1 con incrementi di 0.01

x_t = A * sin(2 * pi * f * t)

figure(1);

subplot(2,1,1);
stem(t, x_t);
title('Segnale discreto di una sinusoide');
xlabel('asse del tempo');

subplot(2,1,2);
plot(t, x_t);
title('Segnale continuo di una sinusoide'); 
xlabel('asse del tempo');