function [p,flag] = NEWTON(F,F_prime,p0,TOL,nmaximum) %delcare function 

i=0;
flag=0;
p_initial=p0; %set initial point p0
p=0; % dummy case . Only applies if Newton's method does not converge, therefore this value is ultimately discarded

while i<= nmaximum
    
    
    FP=feval(F,p_initial); %f(p0)
    FP_prime=feval(F_prime,p_initial); %f'(p0)
    
    p0=p_initial-(FP/FP_prime); %p0-(f(p0)/f'(p0) )
    
    if abs(p0-p_initial) < TOL %check for accuracy 
        flag=1;
        p=p0;
        break;
    end 
    
    i=i+1;
    p_initial=p0; %update p0
end

end


    
    