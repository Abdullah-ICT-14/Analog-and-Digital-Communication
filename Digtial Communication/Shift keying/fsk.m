clear all;
close all;
f1=2;
f2=1;
fs=100;
t=0:1/fs:1;
bit=[ 1 0 1 1 0 1];
time=[];
fsk_signal=[];
for i=1:1:length(bit)
    fsk_signal=[fsk_signal (bit(i)==0)*sin(2*pi*f1*t)+(bit(i)==1)*sin(2*pi*f2*t)];
    time=[time t];
    t=t+1;
end
subplot(2,1,1)
plot(time,fsk_signal,'g','linewidth',4);
axis([0 time(end) -1 1]);
xlabel('time');
ylabel('amplitude');
title('Fsk signal');
grid on;

