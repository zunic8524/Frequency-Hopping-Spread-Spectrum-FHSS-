function [bpsk_sig]= BPSK_modultaed_signal(digital_signal, carrier_signal)
% bpsk modulated signal by multiplying the bit sequence with carrier signal
% bpsk_sig=signal.*carrier;  
bpsk_sig=digital_signal.*carrier_signal;
end