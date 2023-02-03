clear all
close all
clc
figure(1);
magnitude = 10;    % la precisione (passo) del grafico finale e del tempo                                           

time = -1 : 1/magnitude : 1;    % definisco il tempo
T0 = 2/5;                        % shift della delta (o meglio del tempo!)
f = 1/2;

[newDelta, newTime]= delta_function(time, T0*magnitude);   % delta shiftata di

stem(newTime, newDelta);         
title('delta shiftata');

function [delta_function, shifted_time] = delta_function(time, timeShift)
    shifted_time = time;
    delta_function = zeros(1, length(shifted_time));
    delta_function(shifted_time == 0) = 1;

    shifted_time = circshift(shifted_time, timeShift);
end


