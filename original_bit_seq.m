function [digital_signal, carrier_signal, time, N]=original_bit_seq
% Generating digital bit sequnce
fs = 100; %sampling period
f=2;
t = 0:1/(fs-1):1; 
N =30; % number digital bits
bit_sequence=round(rand(1,N));
% allocating the dynamic variables
time = [];
digital_signal = [];
carrier_signal = [];
% generating the original digital and carrier signal 
for ii = 1:1:N
if bit_sequence(ii) == 0
bit = -ones(1,length(t));
else
bit = ones(1,length(t));
end
digital_signal = [digital_signal bit];
carrier = cos(2*f*t*pi);
carrier_signal = [carrier_signal carrier];
time = [time t];
t = t + 1;
end
