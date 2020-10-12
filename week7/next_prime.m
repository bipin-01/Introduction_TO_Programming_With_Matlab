%{ 
    @uthor:Bipin Poudel
%}


function n = next_prime(n)
    n = n+1;
    while(~isprime(n))
        n = n+1;
end