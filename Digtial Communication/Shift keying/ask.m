clear all;
close all;
f=1;
fs=100;
t=0:1/fs:1
bit=[ 1 0 1 0 1 1 1];
time=[];
ask_signal=[];
for i=1:1:length(bit)
    ask_signal=[ask_signal (bit(i)==0)*zeros(1,length(t))+ (bit(i)==1)*sin(2*pi*f*t)];
    time=[time t];
    t=t+1;
end
subplot(2,1,1);
plot(time,ask_signal,'g','linewidth',4);
axis([0 time(end) -1 1]);
xlabel('Time(t)');
title('ASK')
ylabel('Amplitude');
grid on;