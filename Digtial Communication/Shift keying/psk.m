clear all;
close all;
f=1;
fs=100;
t=0:1/fs:1;
bit=[ 1 1 0 1 0 1];
time=[];
psk_signal=[];
for i=1:1: length(bit)
    psk_signal=[psk_signal (bit(i)==0)*-sin(2*pi*f*t)+ (bit(i)==1)*sin(2*pi*f*t)];
time=[time t];
t=t +1;
end
subplot(2,1,1)
plot(time,psk_signal,'g','linewidth',3);
axis([ 0 time(end) -1 1]);
xlabel('Time(t)');
title('PSK modulation')
ylabel('Amplitude');
 grid on;