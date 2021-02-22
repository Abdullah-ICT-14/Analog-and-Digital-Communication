clear all;
close all;
Message_Amplitude=input('message amplitude :');
Message_frequency=input('message frequency :');
Carrier_Amplitude=input('carrier amplitude :');
Carrier_Frequency=input('carrier frequency :');

t=0:.001:1;

message_signal=Message_Amplitude*sin(2*pi*Message_frequency*t);

figure(1);
subplot(3,1,1);
plot(t,message_signal);
xlabel('time');
ylabel('amplitude');
title('message');

Carrier_Signal=Carrier_Amplitude*sin(2*pi*Carrier_Frequency*t);

subplot(3,1,2);
plot(t,Carrier_Signal);
xlabel('time');
ylabel('amplitude');
title('carrier');

noise_signal=sin(2*pi*t);
noise_signal=noise_signal+0.5*randn(size(t));
subplot(3,1,3);
plot(t,noise_signal);
xlabel('time');
ylabel('amplitude');
title('noise');

figure(2);
dsb_sc_signal_without_noise=Carrier_Signal.*message_signal;
subplot(3,1,1);
plot(t,dsb_sc_signal_without_noise);
xlabel('time');
ylabel('amplitude');
title('dsbsc modulated signal without noise');

dsb_sc_signal_with_noise=dsb_sc_signal_without_noise+noise_signal;

subplot(3,1,2);
plot(t,noise_signal);
xlabel('time');
ylabel('amplitude');
title('dsbsc modulated signal with noise');

fig=100;
b=(1/fig)*ones(1,fig);  %ones means create array of all ones.
a=1;

dsb_sc_demodulated_signal=filter(b,a,dsb_sc_signal_with_noise);
subplot(3,1,3);
plot(t,dsb_sc_demodulated_signal);
xlabel('time');
ylabel('amplitude');
title('dsbsc demodulated signal');









