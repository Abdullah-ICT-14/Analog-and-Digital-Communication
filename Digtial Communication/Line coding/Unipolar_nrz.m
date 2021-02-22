clear all;
close all;
fs=100;
t=0:1/fs:1;
bit=[ 1 1 0 1 0 0 1];
time=[];
digital_signal=[];
for i=1:1:length(bit)
    digital_signal=[digital_signal (bit(i)==1)*ones(1,length(t))];
    time=[time t];
    t=t+1;
end
subplot(2,1,1);
plot(time,digital_signal,'b','linewidth',3);
axis([0 time(end) -1 1]);
xlabel('time(t)');
ylabel('amplitude');
title('Unipolar nrz');
grid on;
