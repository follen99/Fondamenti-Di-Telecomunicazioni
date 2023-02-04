clear all
close all
clc
figure(1);

time = -2 : 0.01 : 2;
random_signal = rand(1, length(time));

subplot(4,1,1);
plot(time,random_signal);
title('Segnale originario');

subplot(4,1,2);
plot(time,getFilteredSignal(random_signal, 20));    % 20 elementi
title('Segnale filtrato (20 elementi)');

subplot(4,1,3);
plot(time,getFilteredSignal(random_signal, 100));    % 100 elementi
title('Segnale filtrato (100 elementi)');

subplot(4,1,4);
plot(time,getFilteredSignal(random_signal, 200));    % 200 elementi
title('Segnale filtrato (200 elementi)');


function filtered_signal = getFilteredSignal(originalSignal, magnitude)
    filtered_signal = zeros(1, length(originalSignal));
    for n = 1:length(originalSignal)
        j = n;
        times = 0;
        sum = 0;

        while (times < magnitude && j > 1)                
            sum = sum + originalSignal(j);
            j = j-1;
            times = times + 1;
        end

        filtered_signal(n) = sum/magnitude;
    end
end