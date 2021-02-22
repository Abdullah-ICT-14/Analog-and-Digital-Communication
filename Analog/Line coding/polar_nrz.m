clear all;
close all;
fs=100;
t=0:1/fs:1;
bit=[ 1 1 0 1 0 0 1];
time=[];
dis_sig=[];
for i =1:1:length(bit)
    dis_sig=[dis_sig (bit(i)==0)*-ones(1,length(t))+(bit(i)==1)*ones(1,length(t))];
    time=[time t];
    t=t+1;
end
subplot(2,1,1);
plot(time,dis_sig,'b','linewidth',3);
axis([0 time(end) -1 1]);
xlabel('Time(t)');
title('Polar NRZ (1 1 0 1  0 0 1)')
ylabel('Amplitude');
grid on;