clear all;
close all;
fs=100;
t=0:1/fs:1;
bit=[ 1 1 0 1 0 0 1];
time=[];
dis_sig=[];
for i=1:1:length(bit)
    dis_sig=[dis_sig (bit(i)==0)*zeros(1,length(t))+(bit(i)==1)*ones(1,length(t/2))];
time=[time t/2];
t=t +1;
dis_sig=[dis_sig (bit(i)==0)*zeros(1,length(t))+(bit(i)==1)*zeros(1,length(t/2))];
time=[time t/2];
t=t+1;
end
subplot(2,1,1);
plot(time,dis_sig,'b','linewidth',4);
axis([0 time(end) -1 1]);
xlabel('time');
ylabel('amplitude');
title('unipolar rz');
grid on;