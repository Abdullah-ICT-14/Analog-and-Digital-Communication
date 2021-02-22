   am=2;
  fm=3;
  fs=150;
  t=0:1/fs:2;
  m=am*sin(2*pi*fm*t);
 plot(m,'g','linewidth',3);
  hold all;
  for (k=1:1:length(m))
      if(k==1)
          d(k)=m(k);
          dq(k)=round(d(k));
          mq(k)=dq(k);
          
      else
         d(k)=m(k)-mq(k-1);
           dq(k)=round(d(k));
          mq(k)=mq(k-1)+dq(k);  
      end
  end
  for (k=1:1:length(m))
      if(k==1)
          mqr(k)=dq(k);
      else
          mqr(k)=dq(k)+mqr(k-1);
      end
  end
  
  
  plot(mq,'b','linewidth',3);