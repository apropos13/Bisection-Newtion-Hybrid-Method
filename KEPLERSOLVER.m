%SOLVES KEPLER'S EQUATION FOR THE PARAMETERS SUPPLIED
function y= KEPLERSOLVER(T,e,t)

Ea= 2*pi*t/T; %ENDPOINTS
Eb=pi;
nmax=15;
tolb=10^-6;% does not matter since we alsways reset it 
toln=10^-6;
f=@(E) (2*pi*t)/T - E+ e*sin(E);

f_prime= @(E) -1-e*cos(E);

if Ea<Eb %CHECK THE INTERVAL AND CHOOSE THE CORRECT ONE
    z=HYBRIDBISECTIONNEWTON(f,f_prime, Ea, Eb, tolb, toln,nmax);
else 
    z=HYBRIDBISECTIONNEWTON(f,f_prime, Eb, Ea, tolb, toln,nmax);
end

y=z;

end
