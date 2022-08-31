%% Frequency Hopping Spread Spectrum
clc; clear all; close all; 

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[digital_signal, carrier_signal, time]=original_bit_seq;
subplot(5,1,1);
plot(time,digital_signal,'r','linewidth',1);
grid on;
title(' \bf\it Bit Sequence')
subplot(5,1,2);
plot(time,carrier_signal,'linewidth',1);
grid on;
title('\bf\it Carrier Signal');

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[bpsk_sig]= BPSK_modultaed_signal(digital_signal, carrier_signal);
subplot(5,1,3);
plot(time,bpsk_sig)
grid on;
title('\bf\it BPSK Modulated Signal');

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
spread_signal= spread_frequncey;
subplot(5,1,4)
plot(time, spread_signal);
title('\bf\it Spread Signal With 6 Frequencies');

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
freq_hopped_sig=bpsk_sig.*spread_signal;
subplot(5,1,5)
plot(time, freq_hopped_sig);
title('\bf\it Frequency Hopped Spread Spectrum Signal');