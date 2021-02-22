fm=input('frequency of message signal:');
am=input('amplitude of message signal:');
fc=input('frequency of carrier signal:');
ac=input('amplitude of carrier:');
t=0:.001:1;

%message signal
ms=am*sin(2*pi*fm*t);
figure(1);
subplot(3,1,1);
plot(t,ms);
xlabel('time');
ylabel('amplitude');
title('message signal');

%carrier signal
cs=ac*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,cs);
xlabel('time');
ylabel('amplitude');
title('carrier signal');

%hilbert transform of mesage signal;
htoms=am*sin(2*pi*fm*t+90);
subplot(3,1,3);
plot(t,htoms);
xlabel('time');
ylabel('amplitude');
title('hilbert transform of message signal');

%ssb signal
ssb1=(ac/2)*((ms.*cos(2*pi*fc*t)+(htoms.*sin(2*pi*fc*t))));
figure(2);
subplot(3,1,1);
plot(t,ssb1);
xlabel('time');
ylabel('amplitude');
title('ssb signal');

%noise signal
noise_signal=sin(2*pi*t);
noise_signal=noise_signal+0.5*randn(size(t));
subplot(3,1,2);
plot(t,noise_signal);
title('noise-signal');

%ssb with noise
ssb_noise=ssb1+noise_signal;
subplot(3,1,3);
plot(t,ssb_noise);
title('ssb with noise');

%demodulated signal
fig=100;
b=(1/fig)*ones(1,fig);
a=1;
demodulated_signal=filter(b,a,ssb_noise);
figure(3)
subplot(3,1,3);
plot(t,demodulated_signal);
title('demodulated_signal');














