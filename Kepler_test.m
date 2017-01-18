% Tests how good the approximations to E are by plugging them in to F(E)
%and getting values very close to 0 (in the scale of 10^-6 = tolerance)
T=1;
e=0.25;

i=1;
for t=[0.01:0.02:0.99]
    display(t)
    time(i)=t;
    F(i)= KEPLERSOLVER(T,e,t);
    k=@(E) (2*pi*t)/T - E+ e*sin(E);
    
    zeros(i)= feval(k,F(i))
    i=i+1;
    
end