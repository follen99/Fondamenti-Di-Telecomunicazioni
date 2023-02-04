clear all
close all
clc
figure(1);
magnitude = 10;    % la precisione (passo) del grafico finale e del tempo                                           

time = -1 : 1/magnitude : 1;    % definisco il tempo
T0 = 2/5;                        % shift della delta (o meglio del tempo!)
f = 1/2;

[newDelta, newTime]= delta_function(time, T0*magnitude);   % delta shiftata di
x = cos(2*pi*newTime*f);             % dummy function definita per controllare di aver fatto tutto bene

subplot(3,1,1);
stem(newTime, newDelta);         
title('delta shiftata');

subplot(3,1,2);
plot(newTime,x);
title('funzione coseno');
hold on
scatter(-T0, cos(2*pi*T0*f));

subplot(3,1,3);
stem(newTime, newDelta.*x);
ylim([-1 1]);
title('valore del coseno nel punto T0 ottenuto moltiplicando il segnale coseno per la delta shiftata in T0')


function [delta_function, shifted_time] = delta_function(time, timeShift)
    shifted_time = time;
    delta_function = zeros(1, length(shifted_time));
    delta_function(shifted_time == 0) = 1;

    shifted_time = circshift(shifted_time, timeShift);
end


