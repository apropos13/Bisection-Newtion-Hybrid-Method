%PLOTS THE NUMBER OF TIMES NEWTON'S METHOD WAS CALLED FOR EACH t
function PLOTNEWTON
T=1;
e=0.25;
i=1;

for t=[0.01:0.02:0.99]
    time(i)=t;
    f(i)= KEPLERSOLVER(T,e,t);
    NewtonCounter(i)= GetGlobalCounter;
    
 
    i=i+1;
    
end
plot(f)




%PLOT

x=time;
v=NewtonCounter;
xq=time;
vq1 = interp1(x,v,xq,'linear');
plot(x,v,'bo',xq,vq1,'r-');
xlim([0 1.1]);
ylim([0 8.1]);
title('Linear Interpolation: Number of times Newton is called vs t');
ylabel('Newton');
xlabel('t')
end


function c= GetGlobalCounter
global Gcounter 
c=Gcounter; 
end 
