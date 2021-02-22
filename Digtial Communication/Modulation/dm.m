   am=1;
  fm=2;
  fs=150;
  t=0:1/fs:2;
  m=am*sin(2*pi*fm*t);
  plot(m,'linewidth',.1);
  hold all;
  step_size=2*pi*fm*am/fs;
  for (k=1:1:length(m))
      if(k==1)
          d(k)=m(k);
          dq(k)=step_size*sign(d(k));
          mq(k)=dq(k);
          
      else
         d(k)=m(k)-mq(k-1);
          dq(k)=step_size*sign(d(k));
          mq(k)=mq(k-1)+dq(k);  
      end
  end
  stairs(mq,'linewidth',0.1);
  grid on;