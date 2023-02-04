clear all
close all
clc
figure(1);

time = -1 : 0.01: 1;
random_signal = rand(1, length(time));

subplot(3,1,1);
plot(time, random_signal);
title('segnale originale');

subplot(3,1,2);
plot(time, getAccumulatedSignal(random_signal));
title('segnale accumulato');

subplot(3,1,3);
plot(time, getOriginalSignal(getAccumulatedSignal(random_signal)));
title('segnale ripristinato');

% funzione che funge da sistema accumulatore
function accumulated_signal = getAccumulatedSignal(starting_signal)
    accumulated_signal = zeros(1, length(starting_signal));

    for n = 1:length(starting_signal)
        acc_value = 0;
        for j = 1:n
            acc_value = acc_value + starting_signal(j);
        end
        accumulated_signal(n) = acc_value;
    end
end

% funzione che funge da sistema inverso: invertitore
function original_signal = getOriginalSignal(accumulated_signal)
    original_signal = zeros(1, length(accumulated_signal));
    original_signal(1) = accumulated_signal(1);
    for n = 2:length(accumulated_signal)
        original_signal(n) = accumulated_signal(n) - accumulated_signal(n-1);
    end
end