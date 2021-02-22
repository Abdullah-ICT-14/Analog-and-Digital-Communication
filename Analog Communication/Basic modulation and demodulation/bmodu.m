clear all;
close all;
frequency_of_messsage_signal=input('frequency of message signal:');
frequency_of_carrier_signal=input('frequency of carrier signal:');
f=10; 
n=1000;
t=(1:n)/frequency_of_messsage_signal;

%message signal
message_signal=sin(2*pi*f*t);
subplot(3,1,1);
plot(t,message_signal);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal without noise');

%carrier signal;
crrier_signal=sin(2*pi*frequency_of_carrier_signal*t);
figure(1);
subplot(3,1,2);
plot(t,crrier_signal);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal without noise');

%modulation
modulated_signal=(1+.5*message_signal).*crrier_signal;
subplot(3,1,3);
plot(t,modulated_signal);
xlabel('Time');
ylabel('Amplitude');
title('Modulated Signal without noise');

%noise signal;
noise=sin(2*pi*t);
noise=noise+0.5*randn(size(t));
figure(2);
subplot(3,1,1);
plot(t,noise);
xlabel('Time');
ylabel('Amplitude');
title('noise signal');

%modulated signal with noise
modulated_noise=noise+modulated_signal;
subplot(3,1,2);
plot(t,modulated_noise);
xlabel('Time');
ylabel('Amplitude');
title('modulated signal with noise');

fig=100;
b=(1/fig)*ones(1,fig);
a=1;

%demodulation
demod=filter(b,a,modulated_noise);
subplot(3,1,3);
plot(t,demod);
xlabel('Time');
ylabel('Amplitude');
title('demodulation');



























