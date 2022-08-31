function spread_signal= spread_frequncey

M = 6;
new_carrier_freq=[];
spread_signal=[];
%% generating 6 new carrier frequencies
list=[9;19;29;39;59;119]'; 
for li=1:M
    t=[0:2*pi/list(li):2*pi];
    c1=cos(t);
    ll=120/(list(li)+1);
    c1 =repelem(c1,ll,1);
    new_carrier_freq(li,:)= reshape(c1.',1,[]);
end 
%% Random frequency hopps to generate spread signal
for n=1:25
        hop_rand=randi([1 M],1,1);
    switch(hop_rand)
        case(1)
            spread_signal=[spread_signal new_carrier_freq(1,:)];
        case(2)
            spread_signal=[spread_signal new_carrier_freq(2,:)];
        case(3)
            spread_signal=[spread_signal new_carrier_freq(3,:)];
        case(4)
            spread_signal=[spread_signal new_carrier_freq(4,:)];
        case(5)        
            spread_signal=[spread_signal new_carrier_freq(5,:)];
        case(6)
            spread_signal=[spread_signal new_carrier_freq(6,:)];
    end
end
subplot(5,1,4)
plot(spread_signal);
title('\bf\it Spread Signal With 6 Frequencies');
end