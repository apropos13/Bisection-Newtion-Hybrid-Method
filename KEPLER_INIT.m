%Script that INITIALIZES THE KEPLERSOLVER FOR FIXED VALUES OF T=1,e=0.25 
%AND FOR t=0.01.....0.99
%LASLTY, IT PLOT E VS t
%To run type: KEPLER_INIT on the command line

T=1;
e=0.25;
i=1;

for t=[0.01:0.02:0.99]
   % display(t)
    time(i)=t;
    F(i)=KEPLERSOLVER(T,e,t);
    i=i+1;
    
end

display(F, 'Values of E for t=0.01 0.03...0.97 0.99');
%PLOT

x=time;
v=F;
xq=time;
vq1 = interp1(x,v,xq,'spline');
plot(x,v,'-',xq,vq1,':.');
xlim([0 1.1]);
title('Spline Interpolation: E(t) vs t');
ylabel('E(t)');
xlabel('t')


