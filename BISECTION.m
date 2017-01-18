function [l,r,p] = BISECTION(f,l,r,tlob,bmax)
bmax=1; %we only need one iteration in our case 

i=0;
FA= feval(f, l);

while i<bmax
    p=l+ (r-l)/2;
    FP=feval(f,p);
    
    if FP==0 
        display('FP is zero') %remove this line 
    end
    
    %Different from classic Bisection method. THis is because if r-l<2 is
    %less that or eqaul to tlob , then not fixing the interval would cause 
    %the program to infenitely loop if Newton's method would not converge
    %the first time 
    if (r-l)/2<= tlob 
        if FA*FP>0
            l=p;
        else
            r=p;
        end
        
    end 
        
    if FP==0 || (r-l)/2<= tlob
        
        break
    end 
   
    i=i+1;
    
    if FA*FP>0 
       % display('L updated')
        l=p;
    else 
       % display('R updated')
        r=p;
    end
end

end

