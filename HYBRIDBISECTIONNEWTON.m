


function v= HYBRIDBISECTIONNEWTON(f,f_prime,a,b,~,toln,nmax)
FA=feval(f,a);
FB=feval(f,b);
if FA*FB>0 
    msg= 'f(a)*f(b) is positive, choose other points.';
    error(msg);
    
end

Error=abs(b-a);
tolb=Error/2;
l=a;
r=b;
flag=0;

SetGlobalCounter(0) %global counter
counter=0; %COUNTS HOW MANY TIMES NEWTON'S METHOD IS CALLED FOR A GIVEN t

while flag==0
    
    [l,r,p]=BISECTION(f,l,r,tolb,1);  
    
    [new_p,flag]=NEWTON(f,f_prime,p, toln, nmax);
    counter=counter+1;
    SetGlobalCounter(counter)

    if flag==1
        v=new_p;
        break
    else 
        tolb=tolb/2;
    end
 
    
end

end

%Sets a Global counter to count the number of times Newton's method is
%called and this is later used by PLOTNEWTON to plot the last graph 
function SetGlobalCounter(val)
global Gcounter
Gcounter=val;
end 




