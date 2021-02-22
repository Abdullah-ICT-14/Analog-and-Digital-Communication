clear all;
close all;
fs=100;
t=0:1/fs:1;
bit=[ 1 1  0 1 0 0 1];
time=[];
dig_sig=[];
count=0;
for i =1:1:length(bit)
    if(bit(i)==1)
        count=count+1;
        if(rem(count,2)==0)
            bit(i)=-1;
        end
    end
end
for i=1:1:length(bit)
    dig_sig=[dig_sig (bit(i)==0)*zeros(1,length(t/2))+(bit(i)==1)*ones(1,length(t/2))+(bit(i)==-1)*-ones(1,length(t/2))];
    time=[time t/2];
    t=t+1;
    
    dig_sig=[dig_sig (bit(i)==0)*zeros(1,length(t/2))+(bit(i)==1)*zeros(1,length(t/2))+(bit(i)==-1)*zeros(1,length(t/2))];
    time=[time t/2];
    t=t+1;
end
subplot(2,1,1);
plot(time,dig_sig,'r','linewidth',3)
axis([0 time(end) -1 1]);
xlabel('time');
ylabel('amplitude');
title('Bipolar nrz(1 1 0 1 0 0 1)');
grid on;
    
    
    
    
    
    
    
    
    
    
    